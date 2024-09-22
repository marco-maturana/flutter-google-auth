import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter_google_auth/domains/auth/models/user.dart';

part 'current_user.g.dart';

@Riverpod(keepAlive: true)
class CurrentUser extends _$CurrentUser {
  @override
  User? build() => null;

  set user(User? value) {
    state = value;
  }
}
