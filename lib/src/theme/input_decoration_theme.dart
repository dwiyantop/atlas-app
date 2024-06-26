import 'package:flutter/material.dart';
import 'package:atlas_pos/src/theme/color_schemes.dart';

double borderWidth = 2;
BorderRadius borderRadius = const BorderRadius.all(Radius.circular(16.0));
BorderSide borderSide = BorderSide(width: borderWidth);
Color lightIconColor = MaterialTheme.lightScheme().outline;
Color darkIconColor = MaterialTheme.darkScheme().outline;

InputDecorationTheme inputDecorationThemeGenerator({
  required Color iconColor,
}) {
  return InputDecorationTheme(
    isDense: true,
    border: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: borderSide,
    ),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 16.0,
    ),
    prefixIconColor: iconColor,
    suffixIconColor: iconColor,
    errorStyle: const TextStyle(
      fontSize: 12.0,
    ),
  );
}

InputDecorationTheme lightInputDecorationTheme = inputDecorationThemeGenerator(
  iconColor: lightIconColor,
);
InputDecorationTheme darkInputDecorationTheme = inputDecorationThemeGenerator(
  iconColor: darkIconColor,
);
