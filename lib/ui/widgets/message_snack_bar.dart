import 'package:flutter/material.dart';

enum MessageType {
  info,
  success,
  warning,
  error,
}

Color _getSnackBarColor(MessageType type) {
  switch (type) {
    case MessageType.info:
      return Colors.blue.shade500;
    case MessageType.success:
      return Colors.green.shade500;
    case MessageType.warning:
      return Colors.yellow.shade500;
    case MessageType.error:
      return Colors.red.shade500;
  }
}

class MessageSnackBar extends SnackBar {
  MessageSnackBar({
    Key? key,
    required String message,
    MessageType? type,
    Duration? duration,
  }) : super(
          key: key,
          backgroundColor: _getSnackBarColor(type ?? MessageType.info),
          duration: duration ?? const Duration(seconds: 5),
          content: SizedBox(
            height: 20.0,
            child: Center(
              child: Text(
                message,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
}
