import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme(this.textTheme);

  final TextTheme textTheme;

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff005bb1),
      surfaceTint: Color(0xff005db5),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff0073de),
      onPrimaryContainer: Color(0xfffefcff),
      secondary: Color(0xff435f8c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffaecafd),
      onSecondaryContainer: Color(0xff395581),
      tertiary: Color(0xff8934a9),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa54fc4),
      onTertiaryContainer: Color(0xfffffbff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff181c23),
      onSurfaceVariant: Color(0xff414753),
      outline: Color(0xff717785),
      outlineVariant: Color(0xffc1c6d6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3038),
      inversePrimary: Color(0xffa9c7ff),
      primaryFixed: Color(0xffd6e3ff),
      onPrimaryFixed: Color(0xff001b3d),
      primaryFixedDim: Color(0xffa9c7ff),
      onPrimaryFixedVariant: Color(0xff00468b),
      secondaryFixed: Color(0xffd6e3ff),
      onSecondaryFixed: Color(0xff001b3d),
      secondaryFixedDim: Color(0xffacc7fa),
      onSecondaryFixedVariant: Color(0xff2a4772),
      tertiaryFixed: Color(0xfff9d8ff),
      onTertiaryFixed: Color(0xff330045),
      tertiaryFixedDim: Color(0xffeeb1ff),
      onTertiaryFixedVariant: Color(0xff711892),
      surfaceDim: Color(0xffd7dae3),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f3fd),
      surfaceContainer: Color(0xffebedf7),
      surfaceContainerHigh: Color(0xffe6e8f2),
      surfaceContainerHighest: Color(0xffe0e2ec),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00366d),
      surfaceTint: Color(0xff005db5),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff006cd0),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff173660),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff526e9b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff5c007a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9d47bc),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff0e1118),
      onSurfaceVariant: Color(0xff303642),
      outline: Color(0xff4c535f),
      outlineVariant: Color(0xff676d7b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3038),
      inversePrimary: Color(0xffa9c7ff),
      primaryFixed: Color(0xff006cd0),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff0054a4),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff526e9b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff395581),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff9d47bc),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff812ba1),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc4c6d0),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f3fd),
      surfaceContainer: Color(0xffe6e8f2),
      surfaceContainerHigh: Color(0xffdadce6),
      surfaceContainerHighest: Color(0xffcfd1db),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002c5b),
      surfaceTint: Color(0xff005db5),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00488f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff092c56),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2d4975),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4c0066),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff741b94),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff262c38),
      outlineVariant: Color(0xff434956),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3038),
      inversePrimary: Color(0xffa9c7ff),
      primaryFixed: Color(0xff00488f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003266),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff2d4975),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff13335d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff741b94),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff570073),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb6b8c2),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeef0fa),
      surfaceContainer: Color(0xffe0e2ec),
      surfaceContainerHigh: Color(0xffd2d4de),
      surfaceContainerHighest: Color(0xffc4c6d0),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa9c7ff),
      surfaceTint: Color(0xffa9c7ff),
      onPrimary: Color(0xff003062),
      primaryContainer: Color(0xff3990ff),
      onPrimaryContainer: Color(0xff001837),
      secondary: Color(0xffacc7fa),
      onSecondary: Color(0xff10305a),
      secondaryContainer: Color(0xff2d4975),
      onSecondaryContainer: Color(0xff9eb9eb),
      tertiary: Color(0xffeeb1ff),
      onTertiary: Color(0xff53006f),
      tertiaryContainer: Color(0xffc46ce3),
      onTertiaryContainer: Color(0xff2e003f),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff10131a),
      onSurface: Color(0xffe0e2ec),
      onSurfaceVariant: Color(0xffc1c6d6),
      outline: Color(0xff8b919f),
      outlineVariant: Color(0xff414753),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2ec),
      inversePrimary: Color(0xff005db5),
      primaryFixed: Color(0xffd6e3ff),
      onPrimaryFixed: Color(0xff001b3d),
      primaryFixedDim: Color(0xffa9c7ff),
      onPrimaryFixedVariant: Color(0xff00468b),
      secondaryFixed: Color(0xffd6e3ff),
      onSecondaryFixed: Color(0xff001b3d),
      secondaryFixedDim: Color(0xffacc7fa),
      onSecondaryFixedVariant: Color(0xff2a4772),
      tertiaryFixed: Color(0xfff9d8ff),
      onTertiaryFixed: Color(0xff330045),
      tertiaryFixedDim: Color(0xffeeb1ff),
      onTertiaryFixedVariant: Color(0xff711892),
      surfaceDim: Color(0xff10131a),
      surfaceBright: Color(0xff363941),
      surfaceContainerLowest: Color(0xff0b0e15),
      surfaceContainerLow: Color(0xff181c23),
      surfaceContainer: Color(0xff1c2027),
      surfaceContainerHigh: Color(0xff272a31),
      surfaceContainerHighest: Color(0xff31353c),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffccddff),
      surfaceTint: Color(0xffa9c7ff),
      onPrimary: Color(0xff00254f),
      primaryContainer: Color(0xff3990ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffccddff),
      onSecondary: Color(0xff00254f),
      secondaryContainer: Color(0xff7692c1),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff7cfff),
      onTertiary: Color(0xff420059),
      tertiaryContainer: Color(0xffc46ce3),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff10131a),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd6dcec),
      outline: Color(0xffacb2c1),
      outlineVariant: Color(0xff8a909f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2ec),
      inversePrimary: Color(0xff00478d),
      primaryFixed: Color(0xffd6e3ff),
      onPrimaryFixed: Color(0xff00112a),
      primaryFixedDim: Color(0xffa9c7ff),
      onPrimaryFixedVariant: Color(0xff00366d),
      secondaryFixed: Color(0xffd6e3ff),
      onSecondaryFixed: Color(0xff00112a),
      secondaryFixedDim: Color(0xffacc7fa),
      onSecondaryFixedVariant: Color(0xff173660),
      tertiaryFixed: Color(0xfff9d8ff),
      onTertiaryFixed: Color(0xff220030),
      tertiaryFixedDim: Color(0xffeeb1ff),
      onTertiaryFixedVariant: Color(0xff5c007a),
      surfaceDim: Color(0xff10131a),
      surfaceBright: Color(0xff41444c),
      surfaceContainerLowest: Color(0xff05070e),
      surfaceContainerLow: Color(0xff1a1e25),
      surfaceContainer: Color(0xff24282f),
      surfaceContainerHigh: Color(0xff2f333a),
      surfaceContainerHighest: Color(0xff3a3e45),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffebf0ff),
      surfaceTint: Color(0xffa9c7ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffa2c4ff),
      onPrimaryContainer: Color(0xff000b1f),
      secondary: Color(0xffebf0ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffa8c4f6),
      onSecondaryContainer: Color(0xff000b1f),
      tertiary: Color(0xfffeeaff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffecabff),
      onTertiaryContainer: Color(0xff190024),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff10131a),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffebf0ff),
      outlineVariant: Color(0xffbdc2d2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2ec),
      inversePrimary: Color(0xff00478d),
      primaryFixed: Color(0xffd6e3ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffa9c7ff),
      onPrimaryFixedVariant: Color(0xff00112a),
      secondaryFixed: Color(0xffd6e3ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffacc7fa),
      onSecondaryFixedVariant: Color(0xff00112a),
      tertiaryFixed: Color(0xfff9d8ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffeeb1ff),
      onTertiaryFixedVariant: Color(0xff220030),
      surfaceDim: Color(0xff10131a),
      surfaceBright: Color(0xff4d5058),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1c2027),
      surfaceContainer: Color(0xff2d3038),
      surfaceContainerHigh: Color(0xff383b43),
      surfaceContainerHighest: Color(0xff43474f),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });

  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
