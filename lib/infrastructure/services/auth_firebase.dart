import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:waste_to_go/application/models/user_model.dart';

abstract class AuthFireBase {
  Future<UserModel> login(UserModel user);
  Future<UserModel> register(UserModel user);
  Future<UserModel> getCurrentUser(String id);
  Future<void> logout();
}

class AuthFirebaseIMPL extends AuthFireBase {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  AuthFirebaseIMPL({required this.auth, required this.firestore});

  @override
  Future<UserModel> login(UserModel user) async {
    try {
      final userCredential = await auth.signInWithEmailAndPassword(
        email: user.email!,
        password: user.password!,
      );

      final userData = await firestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .get();

      return UserModel(
        username: userData.get('username'),
        email: userData.get('email'),
        role: userData.get('role'),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModel> register(UserModel user) async {
    try {
      final userCredential = await auth.createUserWithEmailAndPassword(
        email: user.email!,
        password: user.password!,
      );

      final uid = userCredential.user!.uid;
      final hashpass = sha1.convert(utf8.encode(user.password!)).toString();

      final userCollection = UserModel(
        username: user.username!,
        email: user.email!,
        password: hashpass,
        role: user.role!,
      ).toJson();

      await firestore.collection('users').doc(uid).set(userCollection);

      final userData = await firestore.collection('users').doc(uid).get();

      return UserModel(
        username: userData.get('username'),
        email: userData.get('email'),
        role: userData.get('role'),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await auth.signOut();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModel> getCurrentUser(String id) async {
    try {
      final docRef = firestore.collection('users').doc(id);
      final doc = await docRef.get();

      return UserModel.fromJson(doc.data() as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }
}
