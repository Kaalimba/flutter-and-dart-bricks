import 'package:flutter/material.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({
    super.key,
    this.color,
    this.size = 20,
    this.progressWidth = 2,
  });

  final Color? color;
  final double size;
  final double progressWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        strokeWidth: progressWidth,
        constraints: BoxConstraints(
          maxHeight: size,
          maxWidth: size,
        ),
      ),
    );
  }
}
