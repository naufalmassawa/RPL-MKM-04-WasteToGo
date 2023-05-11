import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

import '../../application/models/product_create_model.dart';
import '../../application/models/product_model.dart';

abstract class ProductDataServices {
  Future<void> createData(CreateProductModel product);
  Future<void> deleteProduct(String id);
  Future<List<ProductModel>> getAllData();
  Future<List<ProductModel>> getFreeProducts();
  Future<List<ProductModel>> getExpireFood();
}

class ProductDataServicesIMPL extends ProductDataServices {
  ProductDataServicesIMPL({
    required this.firestore,
    required this.storage,
    required this.auth,
  });

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<void> createData(CreateProductModel product) async {
    try {
      final String productId = const Uuid().v4();
      final path = 'products/${product.image.name}';
      final Reference storageReference = storage.ref().child(path);
      final TaskSnapshot storageSnapshot = await storageReference.putFile(
        File(product.image.path),
      );
      final imageUrl = await storageSnapshot.ref.getDownloadURL();
      final user = auth.currentUser;

      await firestore.collection('products').doc(productId).set({
        'id': productId,
        'imageUrl': imageUrl,
        'name': product.name,
        'desc': product.desc,
        'date': product.date,
        'lat': product.lat,
        'long': product.long,
        'price': product.price,
        'userId': user?.uid,
        'expired': product.expired,
      });
    } on FirebaseException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<ProductModel>> getAllData() async {
    try {
      final snapshot = await firestore.collection('products').get();

      return snapshot.docs
          .map((doc) => ProductModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<ProductModel>> getFreeProducts() async {
    try {
      final snapshot = await firestore
          .collection('products')
          .where('price', isEqualTo: 0)
          .get();

      return snapshot.docs
          .map((doc) => ProductModel.fromJson(doc.data()))
          .toList();
    } on FirebaseException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<ProductModel>> getExpireFood() async {
    try {
      final snapshot = await firestore
          .collection('products')
          .where('expired', isEqualTo: 'expired')
          .get();

      return snapshot.docs
          .map((doc) => ProductModel.fromJson(doc.data()))
          .toList();
    } on FirebaseException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteProduct(String id) async {
    try {
      final DocumentReference docRef = firestore.collection('products').doc(id);
      await docRef.delete();
    } on FirebaseException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
