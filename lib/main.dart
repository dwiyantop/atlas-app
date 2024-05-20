import 'package:flutter/material.dart';

import 'package:atlas_pos/src/app.dart';
import 'package:atlas_pos/src/settings/settings_controller.dart';
import 'package:atlas_pos/src/settings/settings_service.dart';
import 'package:atlas_pos/src/theme/theme_data.dart';

import 'package:atlas_pos/src/core/di/core_di.dart';
import 'package:atlas_pos/src/features/authentication/di/authentication_di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CoreDI().configureDependency();
  await AuthenticationDI().configureDependency();

  final settingsController = SettingsController(SettingsService());

  await settingsController.loadSettings();

  runApp(
    MyApp(
      settingsController: settingsController,
      lightThemeData: lightThemeData,
      darkThemeData: darkThemeData,
    ),
  );
}
