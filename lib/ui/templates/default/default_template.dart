import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'components/app_bar.dart';

class DefaultTemplate extends HookWidget {
  final Widget body;
  final appBar = const AppBarComponent(title: 'Flutter Authentication');

  const DefaultTemplate({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: MediaQuery.of(context).size.height -
              (MediaQuery.of(context).padding.top +
                  appBar.preferredSize.height),
          child: body,
        ),
      ),
    );
  }
}
