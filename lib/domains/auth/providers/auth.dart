import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter_google_auth/domains/auth/models/user.dart';
import 'package:flutter_google_auth/domains/auth/providers/current_user.dart';
import 'package:flutter_google_auth/domains/auth/services/google.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({required bool isAuthenticated}) = _AuthState;
}

@riverpod
class Auth extends _$Auth {
  final GoogleService _googleService = GoogleService.getInstance();

  @override
  AuthState build() {
    state = const AuthState(isAuthenticated: false);

    return state;
  }

  Future<void> signIn() async {
    final GoogleTokens(:idToken) = await _googleService.signIn();

    if (kDebugMode) {
      print('idToken: $idToken');
    }

    state = state.copyWith(isAuthenticated: true);
    ref.read(currentUserProvider.notifier).user = const User(
      id: 'fake_id',
      firstName: 'fake_first_name',
      lastName: 'fake_last_name',
      email: 'fake_email@gmail.com',
    );
  }

  Future<void> signOut() async {
    state = state.copyWith(isAuthenticated: false);
  }
}
