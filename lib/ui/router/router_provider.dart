import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter_google_auth/domains/auth/providers/auth.dart';

import 'router_config.dart';

part 'router_provider.g.dart';

@riverpod
RouterConfig<Object>? router(RouterRef ref) {
  final authState = ref.watch(authProvider);

  return routeConfig(authState: authState);
}
