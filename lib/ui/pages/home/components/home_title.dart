import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_google_auth/domains/auth/providers/current_user.dart';

class HomeTitle extends ConsumerWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUserState = ref.watch(currentUserProvider);

    return Column(
      children: [
        const SizedBox(height: 50),
        const Text(
          'Home Page',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Welcome ${currentUserState?.firstName}',
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black45,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
