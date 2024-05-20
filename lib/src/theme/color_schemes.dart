import 'package:flutter/material.dart';

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff0040ad),
      surfaceTint: Color(0xff0053db),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2563eb),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0c1829),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2c374a),
      onSecondaryContainer: Color(0xffbcc7df),
      tertiary: Color(0xff855300),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffa824),
      onTertiaryContainer: Color(0xff432800),
      error: Color(0xffa40217),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda3437),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffaf8ff),
      onBackground: Color(0xff191b23),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff191b23),
      surfaceVariant: Color(0xffdfe1f4),
      onSurfaceVariant: Color(0xff434655),
      outline: Color(0xff737686),
      outlineVariant: Color(0xffc3c6d7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3039),
      inverseOnSurface: Color(0xfff0f0fb),
      inversePrimary: Color(0xffb4c5ff),
      primaryFixed: Color(0xffdbe1ff),
      onPrimaryFixed: Color(0xff00174b),
      primaryFixedDim: Color(0xffb4c5ff),
      onPrimaryFixedVariant: Color(0xff003ea8),
      secondaryFixed: Color(0xffd8e3fb),
      onSecondaryFixed: Color(0xff111c2d),
      secondaryFixedDim: Color(0xffbcc7de),
      onSecondaryFixedVariant: Color(0xff3c475a),
      tertiaryFixed: Color(0xffffddb8),
      onTertiaryFixed: Color(0xff2a1700),
      tertiaryFixedDim: Color(0xffffb95f),
      onTertiaryFixedVariant: Color(0xff653e00),
      surfaceDim: Color(0xffd9d9e5),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fe),
      surfaceContainer: Color(0xffededf9),
      surfaceContainerHigh: Color(0xffe7e7f3),
      surfaceContainerHighest: Color(0xffe1e2ed),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff003a9f),
      surfaceTint: Color(0xff0053db),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2563eb),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0c1829),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2c374a),
      onSecondaryContainer: Color(0xfff4f6ff),
      tertiary: Color(0xff603b00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa36700),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8b0012),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda3437),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffaf8ff),
      onBackground: Color(0xff191b23),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff191b23),
      surfaceVariant: Color(0xffdfe1f4),
      onSurfaceVariant: Color(0xff3f4251),
      outline: Color(0xff5b5e6e),
      outlineVariant: Color(0xff777a8a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3039),
      inverseOnSurface: Color(0xfff0f0fb),
      inversePrimary: Color(0xffb4c5ff),
      primaryFixed: Color(0xff316bf3),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff0051d5),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6a758a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff515c71),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffa36700),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff825100),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9d9e5),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fe),
      surfaceContainer: Color(0xffededf9),
      surfaceContainerHigh: Color(0xffe7e7f3),
      surfaceContainerHighest: Color(0xffe1e2ed),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff001d59),
      surfaceTint: Color(0xff0053db),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff003a9f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0c1829),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2c374a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff331d00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff603b00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4d0006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8b0012),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffaf8ff),
      onBackground: Color(0xff191b23),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdfe1f4),
      onSurfaceVariant: Color(0xff202331),
      outline: Color(0xff3f4251),
      outlineVariant: Color(0xff3f4251),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3039),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffe8ebff),
      primaryFixed: Color(0xff003a9f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff002670),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff384356),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff222d3f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff603b00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff422700),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9d9e5),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fe),
      surfaceContainer: Color(0xffededf9),
      surfaceContainerHigh: Color(0xffe7e7f3),
      surfaceContainerHighest: Color(0xffe1e2ed),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb4c5ff),
      surfaceTint: Color(0xffb4c5ff),
      onPrimary: Color(0xff002a78),
      primaryContainer: Color(0xff1159e1),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffbcc7de),
      onSecondary: Color(0xff263143),
      secondaryContainer: Color(0xff162133),
      onSecondaryContainer: Color(0xffa1acc3),
      tertiary: Color(0xffffcb8d),
      onTertiary: Color(0xff472a00),
      tertiaryContainer: Color(0xffed9800),
      onTertiaryContainer: Color(0xff311b00),
      error: Color(0xffffb3ad),
      onError: Color(0xff68000a),
      errorContainer: Color(0xffda3437),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xff11131b),
      onBackground: Color(0xffe1e2ed),
      surface: Color(0xff11131b),
      onSurface: Color(0xffe1e2ed),
      surfaceVariant: Color(0xff434655),
      onSurfaceVariant: Color(0xffc3c6d7),
      outline: Color(0xff8d90a0),
      outlineVariant: Color(0xff434655),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ed),
      inverseOnSurface: Color(0xff2e3039),
      inversePrimary: Color(0xff0053db),
      primaryFixed: Color(0xffdbe1ff),
      onPrimaryFixed: Color(0xff00174b),
      primaryFixedDim: Color(0xffb4c5ff),
      onPrimaryFixedVariant: Color(0xff003ea8),
      secondaryFixed: Color(0xffd8e3fb),
      onSecondaryFixed: Color(0xff111c2d),
      secondaryFixedDim: Color(0xffbcc7de),
      onSecondaryFixedVariant: Color(0xff3c475a),
      tertiaryFixed: Color(0xffffddb8),
      onTertiaryFixed: Color(0xff2a1700),
      tertiaryFixedDim: Color(0xffffb95f),
      onTertiaryFixedVariant: Color(0xff653e00),
      surfaceDim: Color(0xff11131b),
      surfaceBright: Color(0xff373942),
      surfaceContainerLowest: Color(0xff0c0e16),
      surfaceContainerLow: Color(0xff191b23),
      surfaceContainer: Color(0xff1d1f27),
      surfaceContainerHigh: Color(0xff282a32),
      surfaceContainerHighest: Color(0xff32343d),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbac9ff),
      surfaceTint: Color(0xffb4c5ff),
      onPrimary: Color(0xff001240),
      primaryContainer: Color(0xff618bff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc0cbe3),
      onSecondary: Color(0xff0b1628),
      secondaryContainer: Color(0xff8691a7),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffcb8d),
      onTertiary: Color(0xff2f1b00),
      tertiaryContainer: Color(0xffed9800),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffb9b4),
      onError: Color(0xff370003),
      errorContainer: Color(0xffff5451),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff11131b),
      onBackground: Color(0xffe1e2ed),
      surface: Color(0xff11131b),
      onSurface: Color(0xfffcfaff),
      surfaceVariant: Color(0xff434655),
      onSurfaceVariant: Color(0xffc7cadb),
      outline: Color(0xff9fa2b3),
      outlineVariant: Color(0xff7f8292),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ed),
      inverseOnSurface: Color(0xff282a32),
      inversePrimary: Color(0xff003faa),
      primaryFixed: Color(0xffdbe1ff),
      onPrimaryFixed: Color(0xff000e35),
      primaryFixedDim: Color(0xffb4c5ff),
      onPrimaryFixedVariant: Color(0xff002f84),
      secondaryFixed: Color(0xffd8e3fb),
      onSecondaryFixed: Color(0xff061122),
      secondaryFixedDim: Color(0xffbcc7de),
      onSecondaryFixedVariant: Color(0xff2c3749),
      tertiaryFixed: Color(0xffffddb8),
      onTertiaryFixed: Color(0xff1c0e00),
      tertiaryFixedDim: Color(0xffffb95f),
      onTertiaryFixedVariant: Color(0xff4f2f00),
      surfaceDim: Color(0xff11131b),
      surfaceBright: Color(0xff373942),
      surfaceContainerLowest: Color(0xff0c0e16),
      surfaceContainerLow: Color(0xff191b23),
      surfaceContainer: Color(0xff1d1f27),
      surfaceContainerHigh: Color(0xff282a32),
      surfaceContainerHighest: Color(0xff32343d),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffcfaff),
      surfaceTint: Color(0xffb4c5ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffbac9ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffbfaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc0cbe3),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf7),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffbe6e),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffb9b4),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff11131b),
      onBackground: Color(0xffe1e2ed),
      surface: Color(0xff11131b),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff434655),
      onSurfaceVariant: Color(0xfffcfaff),
      outline: Color(0xffc7cadb),
      outlineVariant: Color(0xffc7cadb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ed),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff00246a),
      primaryFixed: Color(0xffe1e6ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffbac9ff),
      onPrimaryFixedVariant: Color(0xff001240),
      secondaryFixed: Color(0xffdce7ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc0cbe3),
      onSecondaryFixedVariant: Color(0xff0b1628),
      tertiaryFixed: Color(0xffffe2c4),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffbe6e),
      onTertiaryFixedVariant: Color(0xff231300),
      surfaceDim: Color(0xff11131b),
      surfaceBright: Color(0xff373942),
      surfaceContainerLowest: Color(0xff0c0e16),
      surfaceContainerLow: Color(0xff191b23),
      surfaceContainer: Color(0xff1d1f27),
      surfaceContainerHigh: Color(0xff282a32),
      surfaceContainerHighest: Color(0xff32343d),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
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

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

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
