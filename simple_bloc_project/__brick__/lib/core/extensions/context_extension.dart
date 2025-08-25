import 'package:flutter/material.dart';

extension on BuildContext {
  // Theming
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  // Others
}
