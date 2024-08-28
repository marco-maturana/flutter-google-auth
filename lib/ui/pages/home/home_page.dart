import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_google_auth/ui/templates/default/default_template.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTemplate(
      body: Center(
        child: Text(
          'Home Page',
        ),
      ),
    );
  }
}
