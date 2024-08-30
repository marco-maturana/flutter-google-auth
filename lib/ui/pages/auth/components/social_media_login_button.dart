import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SocialLoginButton extends HookWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String logoImgPath;
  final String text;
  final bool isLoading;
  final void Function()? onPressed;
  final ButtonStyle? style;

  const SocialLoginButton({
    Key? key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.logoImgPath,
    required this.text,
    this.isLoading = false,
    this.onPressed,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 10.0,
      ),
      child: isLoading
          ? const Center(
              child: Padding(
                padding: EdgeInsets.all(7.0),
                child: CircularProgressIndicator(),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Image.asset(logoImgPath, height: 35.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Text(
                      text,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
