import 'package:go_router/go_router.dart';

import 'package:flutter_google_auth/ui/pages/home/home_page.dart';
import 'package:flutter_google_auth/ui/pages/auth/auth_page.dart';

GoRouter routeConfig() => GoRouter(routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/auth',
        builder: (context, state) => const AuthPage(),
      ),
    ]);
