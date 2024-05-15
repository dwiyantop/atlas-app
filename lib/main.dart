import 'package:flutter/material.dart';

import 'package:atlas_pos/src/app.dart';
import 'package:atlas_pos/src/settings/settings_controller.dart';
import 'package:atlas_pos/src/settings/settings_service.dart';
import 'package:atlas_pos/src/theme/theme_data.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(
    MyApp(
      settingsController: settingsController,
      lightThemeData: lightThemeData,
      darkThemeData: darkThemeData,
    ),
  );
}
