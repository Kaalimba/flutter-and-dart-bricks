import 'package:{{app_name.snakeCase()}}/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppSnackBar {
  AppSnackBar._();

  static SnackBar error(
    String message,
    BuildContext context,
  ) {
    return SnackBar(
      content: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: context.colorScheme.onErrorContainer,
          ),
          const Gap(16),
          Expanded(
            child: Text(
              message,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onErrorContainer,
              ),
            ),
          ),
        ],
      ),
      showCloseIcon: true,
      closeIconColor: context.colorScheme.onErrorContainer,
      backgroundColor: context.colorScheme.errorContainer,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static SnackBar info(
    String message,
    BuildContext context,
  ) {
    return SnackBar(
      content: Row(
        children: [
          Icon(
            Icons.info_outline,
            color: context.colorScheme.onSurface,
          ),
          const Gap(16),
          Expanded(
            child: Text(
              message,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
      showCloseIcon: true,
      closeIconColor: context.colorScheme.onSurface,
      backgroundColor: context.colorScheme.surfaceContainerHighest,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static SnackBar success(
    String message,
    BuildContext context,
  ) {
    return SnackBar(
      content: Row(
        children: [
          Icon(
            Icons.check_circle_outline,
            color: context.colorScheme.onPrimaryContainer,
          ),
          const Gap(16),
          Expanded(
            child: Text(
              message,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
      showCloseIcon: true,
      closeIconColor: context.colorScheme.onPrimaryContainer,
      backgroundColor: context.colorScheme.primaryContainer,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
