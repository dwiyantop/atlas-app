import 'package:flutter/material.dart';
import 'package:atlas_pos/src/theme/color_schemes.dart';
import 'package:atlas_pos/src/theme/text_theme.dart';
import 'package:atlas_pos/src/theme/input_decoration_theme.dart';
import 'package:atlas_pos/src/theme/elevated_button_theme.dart';

ThemeData createThemeData({
  required ColorScheme colorScheme,
  required InputDecorationTheme inputDecorationTheme,
  required ElevatedButtonThemeData elevatedButtonTheme,
}) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    fontFamily: 'PlusJakartaSans',
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme,
    elevatedButtonTheme: elevatedButtonTheme,
  );
}

ThemeData lightThemeData = createThemeData(
  colorScheme: MaterialTheme.lightScheme().toColorScheme(),
  inputDecorationTheme: lightInputDecorationTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(style: lightElevatedButtonStyle()),
);

ThemeData darkThemeData = createThemeData(
  colorScheme: MaterialTheme.darkScheme().toColorScheme(),
  inputDecorationTheme: darkInputDecorationTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(style: darkElevatedButtonStyle()),
);
