import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.bottomNavigationBar,
    this.padding,
  });

  final PreferredSizeWidget? appBar;

  final Widget? body;

  final Widget? bottomNavigationBar;

  final EdgeInsetsGeometry? padding;

  final FloatingActionButton? floatingActionButton;

  final FloatingActionButtonLocation? floatingActionButtonLocation;

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
              padding:
                  padding ??
                  const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 24,
                  ),
              child: body,
            ),
          );
        },
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
