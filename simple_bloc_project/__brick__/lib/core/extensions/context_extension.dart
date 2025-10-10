import 'package:{{app_name.snakeCase()}}/core/widgets/snackbar.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  // Theming
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);

  // UI
  void showErrorSnackBar(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(AppSnackBar.error(message, this));
  }

  void showInfoSnackBar(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(AppSnackBar.info(message, this));
  }

  void showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(AppSnackBar.success(message, this));
  }
}
