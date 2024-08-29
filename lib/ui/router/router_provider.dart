import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'router_config.dart';

part 'router_provider.g.dart';

@riverpod
RouterConfig<Object>? router(RouterRef ref) {
  return routeConfig();
}
