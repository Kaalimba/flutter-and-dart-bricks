import 'package:{{app_name.snakeCase()}}/core/extensions/context_extension.dart';
import 'package:{{app_name.snakeCase()}}/core/widgets/inputs/text_field.dart';
import 'package:{{app_name.snakeCase()}}/l10n/l10n.dart';
import 'package:flutter/material.dart';

class AppPasswordTextField extends StatefulWidget {
  const AppPasswordTextField({
    super.key,
    this.label,
    this.hint,
    this.enabled = true,
    this.controller,
    this.validator,
    this.autofocus = false,
  });

  final String? label;
  final String? hint;
  final bool enabled;
  final bool autofocus;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  State<AppPasswordTextField> createState() => _AppPasswordTextFieldState();
}

class _AppPasswordTextFieldState extends State<AppPasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      autofocus: widget.autofocus,
      obscureText: _obscureText,
      label: widget.label,
      hint: widget.hint,
      controller: widget.controller,
      enabled: widget.enabled,
      validator: _validator,
      prefixIcon: const Icon(Icons.password_outlined),
      suffixIcon: IconButton(
        icon: Icon(
          _obscureText
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
          color: context.colorScheme.onSurfaceVariant,
        ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      ),
    );
  }

  String? _validator(String? text) {
    if (text == null || text.isEmpty) {
      return context.l10n.passwordCannotBeEmpty;
    }

    return widget.validator?.call(text);
  }
}
