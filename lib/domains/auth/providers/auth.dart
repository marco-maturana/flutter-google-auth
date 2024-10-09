import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter_google_auth/domains/auth/graphql/sign_in_with_google_mutation.dart';
import 'package:flutter_google_auth/domains/auth/providers/current_user.dart';
import 'package:flutter_google_auth/domains/auth/services/google.dart';
import 'package:flutter_google_auth/services/secure_storage.dart';

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
    final SignInWithGoogleResult(:user, :token) =
        await signInWithGoogleMutation(idToken);

    final storage = SecureStorage.getInstance();
    await storage.setJwtToken(token);

    ref.read(currentUserProvider.notifier).user = user;
    state = state.copyWith(isAuthenticated: true);
  }

  Future<void> signOut() async {
    await _googleService.signOut();
    state = state.copyWith(isAuthenticated: false);
  }
}
