import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';
import 'injection.dart' as injection;
import 'presentation/blocs/auth_bloc.dart';
import 'presentation/blocs/location_bloc.dart';
import 'presentation/blocs/page_cubit.dart';
import 'presentation/blocs/product_bloc.dart';
import 'presentation/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await injection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => injection.locator<AuthBloc>(),
        ),
        BlocProvider(
          create: (_) => injection.locator<PageCubit>(),
        ),
        BlocProvider(
          create: (_) => injection.locator<LocationBloc>(),
        ),
        BlocProvider(
          create: (_) => injection.locator<ProductBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Waste To Go',
        debugShowCheckedModeBanner: false,
        // Theme
        theme: ThemeData.light(),
        // Routing
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
