import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.padding,
  });

  final PreferredSizeWidget? appBar;

  final Widget? body;

  final Widget? bottomNavigationBar;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Builder(
        builder: (context) {
          if (body == null) {
            return const SizedBox.shrink();
          }

          return SafeArea(
            child: Padding(
              padding: padding ?? const EdgeInsets.all(16),
              child: body,
            ),
          );
        },
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
