import 'package:{{app_name.snakeCase()}}/core/widgets/loader.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton.filledNormal({
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.filled,
       _size = _ButtonStyle.normal,
       icon = null;

  const AppButton.tonalNormal({
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.tonal,
       _size = _ButtonStyle.normal,
       icon = null;

  const AppButton.outlinedNormal({
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.outlined,
       _size = _ButtonStyle.normal,
       icon = null;

  const AppButton.textNormal({
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.text,
       _size = _ButtonStyle.normal,
       icon = null;

  const AppButton.filledIconNormal({
    required Widget this.icon,
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.filledIcon,
       _size = _ButtonStyle.normal;

  const AppButton.tonalIconNormal({
    required Widget this.icon,
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.tonalIcon,
       _size = _ButtonStyle.normal;

  const AppButton.outlinedIconNormal({
    required Widget this.icon,
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.outlinedIcon,
       _size = _ButtonStyle.normal;

  const AppButton.textIconNormal({
    required Widget this.icon,
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.textIcon,
       _size = _ButtonStyle.normal;

  const AppButton.filledLarge({
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.filled,
       _size = _ButtonStyle.large,
       icon = null;

  const AppButton.tonalLarge({
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.tonal,
       _size = _ButtonStyle.large,
       icon = null;

  const AppButton.outlinedLarge({
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.outlined,
       _size = _ButtonStyle.large,
       icon = null;

  const AppButton.textLarge({
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.text,
       _size = _ButtonStyle.large,
       icon = null;

  const AppButton.filledIconLarge({
    required Widget this.icon,
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.filledIcon,
       _size = _ButtonStyle.large;

  const AppButton.tonalIconLarge({
    required Widget this.icon,
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.tonalIcon,
       _size = _ButtonStyle.large;

  const AppButton.outlinedIconLarge({
    required Widget this.icon,
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.outlinedIcon,
       _size = _ButtonStyle.large;

  const AppButton.textIconLarge({
    required Widget this.icon,
    required this.label,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.enabled = true,
  }) : _type = _ButtonType.textIcon,
       _size = _ButtonStyle.large;

  final void Function()? onPressed;

  final String label;

  final bool isLoading;

  final bool enabled;

  final Widget? icon;

  final _ButtonType _type;

  final _ButtonStyle _size;

  @override
  Widget build(BuildContext context) {
    final onPressureCallBack = enabled && !isLoading
        ? onPressed ?? () {}
        : null;

    final buttonStyle = _size == _ButtonStyle.large
        ? _LargeButtonStyle(context)
        : const _NormalButtonStyle();

    return switch (_type) {
      // _ButtonType.filled
      _ButtonType.filled => FilledButton(
        onPressed: onPressureCallBack,
        style: buttonStyle,
        child: _ChildBuilder(
          isLoading: isLoading,
          label: label,
        ),
      ),

      // _ButtonType.tonal
      _ButtonType.tonal => FilledButton.tonal(
        onPressed: onPressureCallBack,
        style: buttonStyle,
        child: _ChildBuilder(
          isLoading: isLoading,
          label: label,
        ),
      ),

      // _ButtonType.outlined
      _ButtonType.outlined => OutlinedButton(
        onPressed: onPressureCallBack,
        style: buttonStyle,
        child: _ChildBuilder(
          isLoading: isLoading,
          label: label,
        ),
      ),

      // _ButtonType.text
      _ButtonType.text => TextButton(
        onPressed: onPressureCallBack,
        style: buttonStyle,
        child: _ChildBuilder(
          isLoading: isLoading,
          label: label,
        ),
      ),

      // _ButtonType.filledIcon
      _ButtonType.filledIcon => FilledButton.icon(
        onPressed: onPressureCallBack,
        style: buttonStyle,
        icon: _IconBuilder(
          isLoading: isLoading,
          child: icon,
        ),
        label: _ChildBuilder(
          isLoading: isLoading,
          label: label,
        ),
      ),

      // _ButtonType.tonalIcon
      _ButtonType.tonalIcon => FilledButton.tonalIcon(
        onPressed: onPressureCallBack,
        icon: _IconBuilder(
          isLoading: isLoading,
          child: icon,
        ),
        label: _ChildBuilder(
          isLoading: isLoading,
          label: label,
        ),
      ),

      // _ButtonType.outlinedIcon
      _ButtonType.outlinedIcon => OutlinedButton.icon(
        onPressed: onPressureCallBack,
        icon: _IconBuilder(
          isLoading: isLoading,
          child: icon,
        ),
        label: _ChildBuilder(
          isLoading: isLoading,
          label: label,
        ),
      ),

      // _ButtonType.textIcon
      _ButtonType.textIcon => TextButton.icon(
        onPressed: onPressureCallBack,
        icon: _IconBuilder(
          isLoading: isLoading,
          child: icon,
        ),
        label: _ChildBuilder(
          isLoading: isLoading,
          label: label,
        ),
      ),
    };
  }
}

enum _ButtonStyle {
  large,
  normal,
}

enum _ButtonType {
  // Classic button types
  filled,
  tonal,
  outlined,
  text,

  // Iconic button types
  filledIcon,
  tonalIcon,
  outlinedIcon,
  textIcon,
}

class _IconBuilder extends StatelessWidget {
  const _IconBuilder({
    required this.isLoading,
    this.child,
  });

  final bool isLoading;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const SizedBox.shrink();
    }

    return child ?? const SizedBox.shrink();
  }
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

class _LargeButtonStyle extends ButtonStyle {
  _LargeButtonStyle(this.context)
    : super(
        elevation: const WidgetStatePropertyAll(0),
        fixedSize: WidgetStatePropertyAll(
          Size(
            MediaQuery.of(context).size.width,
            55,
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

class _NormalButtonStyle extends ButtonStyle {
  const _NormalButtonStyle()
    : super(
        elevation: const WidgetStatePropertyAll(0),
      );
}
