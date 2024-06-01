import 'package:flutter/material.dart';
import 'package:atlas_pos/src/theme/color_schemes.dart';

NavigationBarThemeData navigationBarThemeDataGenerator({
  required Color indicatorColor,
  required Color backgroundColor,
}) {
  return NavigationBarThemeData(
    height: 70.0,
    backgroundColor: backgroundColor,
    indicatorColor: indicatorColor,
  );
}

NavigationBarThemeData lightNavigationBarTheme = navigationBarThemeDataGenerator(
  backgroundColor: MaterialTheme.lightScheme().surface,
  indicatorColor: MaterialTheme.lightScheme().primary.withOpacity(0.65),
);

NavigationBarThemeData darkNavigationBarTheme = navigationBarThemeDataGenerator(
  backgroundColor: MaterialTheme.darkScheme().surfaceContainer,
  indicatorColor: MaterialTheme.darkScheme().primary,
);
