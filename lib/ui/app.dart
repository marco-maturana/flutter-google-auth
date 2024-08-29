import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router/router_provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (_, ref, __) {
      final router = ref.watch(routerProvider);

      return MaterialApp.router(
        title: 'Flutter Google Auth',
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      );
    });
  }
}
