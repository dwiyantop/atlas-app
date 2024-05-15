import 'package:flutter/material.dart';
import 'package:atlas_pos/src/theme/color_schemes.dart';
import 'package:atlas_pos/src/theme/text_theme.dart';

ThemeData createThemeData({
  required ColorScheme colorScheme,
}) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    fontFamily: 'PlusJakartaSans',
    textTheme: textTheme,
  );
}

ThemeData lightThemeData = createThemeData(
  colorScheme: MaterialTheme.lightScheme().toColorScheme(),
);

ThemeData darkThemeData = createThemeData(
  colorScheme: MaterialTheme.darkScheme().toColorScheme(),
);
