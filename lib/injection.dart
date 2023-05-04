import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'domain/use_cases/get_detail_product.dart';
import 'presentation/blocs/product_bloc.dart';

import 'domain/repositories/auth_repository.dart';
import 'domain/repositories/product_repository.dart';
import 'domain/use_cases/create_product.dart';
import 'domain/use_cases/create_user_login.dart';
import 'domain/use_cases/create_user_register.dart';
import 'domain/use_cases/get_all_product.dart';
import 'domain/use_cases/get_current_user.dart';
import 'domain/use_cases/logout.dart';
import 'infrastructure/repositories/product_repository.dart';
import 'infrastructure/repositories/user_repository.dart';
import 'infrastructure/services/auth_firebase.dart';
import 'infrastructure/services/product_firebase.dart';
import 'presentation/blocs/auth_bloc.dart';
import 'presentation/blocs/location_bloc.dart';
import 'presentation/blocs/page_cubit.dart';

final locator = GetIt.instance;

Future<void> init() async {
  // BLOC STATE INJECTION
  locator.registerFactory(() => AuthBloc(
        locator(),
        locator(),
        locator(),
        locator(),
      ));

  locator.registerFactory(() => ProductBloc(
        locator(),
        locator(),
        locator(),
      ));

  locator.registerFactory(
    () => PageCubit(),
  );

  locator.registerFactory(
    () => LocationBloc(),
  );

  // USE CASE INJECTION
  locator.registerLazySingleton(() => GetCurrentUser(
        locator(),
      ));
  locator.registerLazySingleton(() => CreateUserLogin(
        locator(),
      ));
  locator.registerLazySingleton(() => CreateUserRegister(
        locator(),
      ));
  locator.registerLazySingleton(() => Logout(
        locator(),
      ));
  locator.registerLazySingleton(() => CreateProduct(
        locator(),
      ));
  locator.registerLazySingleton(() => GetAllProduct(
        locator(),
      ));
  locator.registerLazySingleton(() => GetProductDetail(
        locator(),
      ));

  // REPOSITORY INJECTION
  locator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryIMPL(
      authFireBase: locator(),
    ),
  );
  locator.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryIMPL(
      dataServices: locator(),
    ),
  );

  // FIREBASE INJECTION
  locator.registerLazySingleton<AuthFireBase>(
    () => AuthFirebaseIMPL(
      auth: locator(),
      firestore: locator(),
    ),
  );

  locator.registerLazySingleton<ProductDataServices>(
    () => ProductDataServicesIMPL(
      firestore: locator(),
      storage: locator(),
      auth: locator(),
    ),
  );

  // EXTERNAL
  locator.registerLazySingleton(() => FirebaseAuth.instance);
  locator.registerLazySingleton(() => FirebaseFirestore.instance);
  locator.registerLazySingleton(() => FirebaseStorage.instance);
}
