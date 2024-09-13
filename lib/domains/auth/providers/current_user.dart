import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter_google_auth/domains/auth/models/user.dart';

part 'current_user.freezed.dart';
part 'current_user.g.dart';

@freezed
class CurrentUserState with _$CurrentUserState {
  const factory CurrentUserState({required User? user}) = _CurrentUserState;
}

@riverpod
class CurrentUser extends _$CurrentUser {
  @override
  CurrentUserState build() {
    state = const CurrentUserState(user: null);

    return state;
  }

  get user => state.user;

  set user(value) {
    state = CurrentUserState(user: user);
  }
}
