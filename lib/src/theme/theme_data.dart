import 'package:flutter/material.dart';
import 'package:atlas_pos/src/theme/color_schemes.dart';
import 'package:atlas_pos/src/theme/text_theme.dart';
import 'package:atlas_pos/src/theme/input_decoration_theme.dart';
import 'package:atlas_pos/src/theme/elevated_button_theme.dart';
import 'package:atlas_pos/src/theme/navigation_bar_theme.dart';

ThemeData createThemeData({
  required ColorScheme colorScheme,
  required InputDecorationTheme inputDecorationTheme,
  required ElevatedButtonThemeData elevatedButtonTheme,
  required NavigationBarThemeData navigationBarTheme,
}) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    fontFamily: 'PlusJakartaSans',
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme,
    elevatedButtonTheme: elevatedButtonTheme,
    navigationBarTheme: navigationBarTheme,
  );
}

ThemeData lightThemeData = createThemeData(
  colorScheme: MaterialTheme.lightScheme().toColorScheme(),
  inputDecorationTheme: lightInputDecorationTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(style: lightElevatedButtonStyle()),
  navigationBarTheme: lightNavigationBarTheme,
);

ThemeData darkThemeData = createThemeData(
  colorScheme: MaterialTheme.darkScheme().toColorScheme(),
  inputDecorationTheme: darkInputDecorationTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(style: darkElevatedButtonStyle()),
  navigationBarTheme: darkNavigationBarTheme,
);
