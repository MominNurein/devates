import 'package:devates/features/home/presentation/screens/details_screen.dart';
import 'package:devates/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/home/presentation/screens/home_screen.dart';

class RouteHelper {
  // Routes
  static const String _initialRoute = '/';
  static const String _splash = '/splash';

  // Route Getters
  static String get getInitialRoute => _initialRoute;
  static String get getSplashRoute => _splash;

  static GoRouter router = GoRouter(
    initialLocation: _splash,
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return HomeScreen(
            state: state,
          );
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'details',
            builder: (BuildContext context, GoRouterState state) {
              return const DetailsScreen();
            },
          ),
        ],
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) {
          return SplashScreen();
        },
      )
    ],
  );
}
