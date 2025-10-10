import 'package:{{app_name.snakeCase()}}/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.hint,
    this.label,
    this.enabled = true,
    this.obscureText = false,
    this.validator,
    this.controller,
    this.onChanged,
    this.formatters,
    this.prefixIcon,
    this.suffixIcon,
    this.inputType,
    this.autoValidateMode,
    this.maxLines = 1,
    this.textCapitalization = TextCapitalization.none,
    this.autofocus = false,
  });

  final String? hint;
  final String? label;
  final bool enabled;
  final bool obscureText;
  final bool autofocus;
  final String? Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? formatters;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? inputType;
  final int maxLines;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null) ...[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 2,
              ),
              child: Text(
                label!,
                style: context.textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: enabled
                      ? context.colorScheme.onSurfaceVariant
                      : context.colorScheme.surfaceContainerHigh,
                ),
              ),
            ),
          ),
          const Gap(8),
        ],
        TextFormField(
          autofocus: autofocus,
          textCapitalization: textCapitalization,
          maxLines: maxLines,
          controller: controller,
          onChanged: onChanged,
          enabled: enabled,
          validator: validator,
          autovalidateMode:
              autoValidateMode ?? AutovalidateMode.onUserInteraction,
          cursorColor: context.colorScheme.primary,
          obscureText: obscureText,
          obscuringCharacter: '●',
          inputFormatters: formatters,
          keyboardType: inputType,
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          decoration: InputDecoration(
            hintText: hint,
            hintMaxLines: 1,
            hintStyle: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            alignLabelWithHint: true,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
