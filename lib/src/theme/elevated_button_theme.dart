import 'package:flutter/material.dart';
import 'package:atlas_pos/src/theme/color_schemes.dart';

Color lightBackgroundColor = MaterialTheme.lightScheme().primary;
Color lightBackgroundColorDisabled = MaterialTheme.lightScheme().onSurface;
Color lightForegroundColor = MaterialTheme.lightScheme().background;
Color lightForegroundColorDisabled = MaterialTheme.lightScheme().onSurface;

Color darkBackgroundColor = MaterialTheme.darkScheme().primary;
Color darkBackgroundColorDisabled = MaterialTheme.darkScheme().onSurface;
Color darkForegroundColor = MaterialTheme.darkScheme().onPrimary;
Color darkForegroundColorDisabled = MaterialTheme.darkScheme().onSurface;

ButtonStyle buttonStyleGenerator({
  required Color backgroundColor,
  required Color backgroundColorDisabled,
  required Color foregroundColor,
  required Color foregroundColorDisabled,
}) {
  return ButtonStyle(
    fixedSize: WidgetStateProperty.all<Size>(
      const Size(0, 50),
    ),
    padding: const WidgetStatePropertyAll(
      EdgeInsets.all(8.0),
    ),
    backgroundColor: WidgetStateProperty.resolveWith<Color>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return backgroundColorDisabled.withOpacity(0.08);
        }

        if (states.contains(WidgetState.pressed)) {
          return backgroundColor.withOpacity(0.8);
        } else {
          return backgroundColor;
        }
      },
    ),
    foregroundColor: WidgetStateProperty.resolveWith<Color>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return foregroundColorDisabled;
        } else {
          return foregroundColor;
        }
      },
    ),
  );
}

ButtonStyle lightElevatedButtonStyle() {
  return buttonStyleGenerator(
    backgroundColor: lightBackgroundColor,
    backgroundColorDisabled: lightBackgroundColorDisabled,
    foregroundColor: lightForegroundColor,
    foregroundColorDisabled: lightForegroundColorDisabled,
  );
}

ButtonStyle darkElevatedButtonStyle() {
  return buttonStyleGenerator(
    backgroundColor: darkBackgroundColor,
    backgroundColorDisabled: darkBackgroundColorDisabled,
    foregroundColor: darkForegroundColor,
    foregroundColorDisabled: darkForegroundColorDisabled,
  );
}
