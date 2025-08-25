import 'package:{{project_name.snakeCase()}}/core/widgets/loader.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton.filled({
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.filled;

  const AppButton.tonal({
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.tonal;

  const AppButton.outlined({
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.outlined;

  const AppButton.text({
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.text;

  final void Function()? onPressed;

  final String label;

  final bool isLoading;

  final bool enabled;

  final _ButtonType _type;

  @override
  Widget build(BuildContext context) {
    final onPressureCallBack = enabled && !isLoading
        ? onPressed ?? () {}
        : null;

    return switch (_type) {
      // _ButtonType.filled
      _ButtonType.filled => FilledButton(
        onPressed: onPressureCallBack,
        style: _ButtonStyle(context),
        child: _ChildBuilder(
          isLoading: isLoading,
          label: label,
        ),
      ),

      // _ButtonType.tonal
      _ButtonType.tonal => FilledButton.tonal(
        onPressed: onPressureCallBack,
        style: _ButtonStyle(context),
        child: _ChildBuilder(
          isLoading: isLoading,
          label: label,
        ),
      ),

      // _ButtonType.outlined
      _ButtonType.outlined => OutlinedButton(
        onPressed: onPressureCallBack,
        style: _ButtonStyle(context),
        child: _ChildBuilder(
          isLoading: isLoading,
          label: label,
        ),
      ),

      // _ButtonType.text
      _ButtonType.text => TextButton(
        onPressed: onPressureCallBack,
        style: _ButtonStyle(context),
        child: _ChildBuilder(
          isLoading: isLoading,
          label: label,
        ),
      ),
    };
  }
}

enum _ButtonType {
  filled,
  tonal,
  outlined,
  text,
}

class _ChildBuilder extends StatelessWidget {
  const _ChildBuilder({
    required this.isLoading,
    required this.label,
  });

  final bool isLoading;
  final String label;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const AppLoader();
    }

    return Text(
      label,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _ButtonStyle extends ButtonStyle {
  _ButtonStyle(this.context)
    : super(
        fixedSize: WidgetStatePropertyAll(
          Size(
            MediaQuery.of(context).size.width,
            50,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );

  final BuildContext context;
}
