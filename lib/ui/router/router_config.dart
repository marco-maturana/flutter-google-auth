import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_google_auth/domains/auth/providers/auth.dart';

import 'package:flutter_google_auth/ui/pages/home/home_page.dart';
import 'package:flutter_google_auth/ui/pages/auth/auth_page.dart';

GoRouter routeConfig({required AuthState authState}) => GoRouter(routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        redirect: (BuildContext context, GoRouterState state) {
          if (authState.isAuthenticated) {
            return null;
          }

          return '/auth';
        },
      ),
      GoRoute(
        path: '/auth',
        builder: (context, state) => const AuthPage(),
        redirect: (BuildContext context, GoRouterState state) {
          if (authState.isAuthenticated) {
            return '/';
          }

          return null;
        },
      ),
    ]);
