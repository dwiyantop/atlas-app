import 'package:flutter/material.dart';

double borderWidth = 2;
BorderRadius borderRadius = const BorderRadius.all(Radius.circular(16.0));
BorderSide borderSide = BorderSide(width: borderWidth);

InputDecorationTheme inputDecorationThemeGenerator() {
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
    errorStyle: const TextStyle(
      fontSize: 12.0,
    ),
  );
}

InputDecorationTheme lightInputDecorationTheme = inputDecorationThemeGenerator();
InputDecorationTheme darkInputDecorationTheme = inputDecorationThemeGenerator();
