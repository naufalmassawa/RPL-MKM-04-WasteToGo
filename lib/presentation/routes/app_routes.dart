import 'package:go_router/go_router.dart';
import 'package:waste_to_go/presentation/pages/all_food_page.dart';
import 'package:waste_to_go/presentation/pages/free_food_page.dart';

import '../pages/add_food_page.dart';
import '../pages/detail_page.dart';
import '../pages/get_started_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';
import '../pages/pick_location.dart';
import '../pages/register_page.dart';
import '../pages/setting_page.dart';
import '../pages/splash_page.dart';
import 'component_route.dart';

final router = GoRouter(
  routes: [
    goRoute(
      name: 'splash',
      path: '/',
      child: const SplashPage(),
    ),
    goRoute(
      name: 'get-started',
      path: '/started',
      child: const GetStartedPage(),
    ),
    goRoute(
      name: 'login',
      path: '/login',
      child: const LoginPage(),
    ),
    goRoute(
      name: 'register',
      path: '/register',
      child: const RegisterPage(),
    ),
    goRoute(
      name: 'main',
      path: '/main',
      child: const MainPage(),
      routes: [
        goRoute(
          name: 'setting',
          path: 'setting',
          child: const SettingPage(),
        ),
        goRoute(
            name: 'add-food',
            path: 'add',
            child: const AddFoodPage(),
            routes: [
              goRoute(
                name: 'location',
                path: 'location',
                child: const PickLocation(),
              ),
            ]),
        goRoute(
          name: 'home',
          path: 'home',
          child: const HomePage(),
          routes: [
            goRoute(
              name: 'allFood',
              path: 'allFood',
              child: const AllFoodPage(),
            ),
            goRoute(
              name: 'freeFood',
              path: 'freeFood',
              child: const FreeFoodPage(),
            ),
            GoRoute(
              name: 'detail',
              path: 'detail/:id',
              pageBuilder: (context, state) {
                String id = state.params['id'] ?? '';
                return CustomTransitionPage(
                  key: state.pageKey,
                  arguments: state.extra,
                  child: DetailPage(id: id),
                  transitionsBuilder: transitionsBuilder(),
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
  initialLocation: '/',
  debugLogDiagnostics: true,
  routerNeglect: true,
);
