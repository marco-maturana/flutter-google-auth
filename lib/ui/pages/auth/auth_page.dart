import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_google_auth/ui/templates/default/default_template.dart';

import 'components/google_sign_in_button.dart';
import 'components/social_media_divider.dart';
import 'components/sign_in_title.dart';

class AuthPage extends HookWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTemplate(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SignInTitle(),
          Image.asset(
            'assets/images/logo.png',
            width: 200,
            height: 200,
          ),
          const Column(
            children: [
              SocialMediaDivider(),
              SizedBox(height: 20),
              GoogleSignInButton(),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
