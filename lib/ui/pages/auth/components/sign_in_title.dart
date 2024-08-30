import 'package:flutter/material.dart';

class SignInTitle extends StatefulWidget {
  const SignInTitle({super.key});

  @override
  State<SignInTitle> createState() => _SignInTitleState();
}

class _SignInTitleState extends State<SignInTitle> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 50),
        Text(
          'Sign In',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Login to your account',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black45,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
