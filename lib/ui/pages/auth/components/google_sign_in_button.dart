import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'social_media_login_button.dart';

class GoogleSignInButton extends HookConsumerWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SocialLoginButton(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      logoImgPath: 'assets/images/google_logo.png',
      onPressed: () async {
        try {
          if (!context.mounted) return;

          context.go('/');
        } catch (e) {
          if (!context.mounted) return;
          if (kDebugMode) print(e);
        }
      },
      text: 'Sign in with Google',
    );
  }
}
