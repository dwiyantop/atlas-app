import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:atlas_pos/src/core/di/service_locator.dart';
import 'package:atlas_pos/src/features/authentication/presentation/provider/authentication_provider.dart';

import 'package:atlas_pos/src/sample_feature/sample_item_details_view.dart';
import 'package:atlas_pos/src/sample_feature/sample_item_list_view.dart';
import 'package:atlas_pos/src/settings/settings_controller.dart';
import 'package:atlas_pos/src/settings/settings_view.dart';

import 'package:atlas_pos/src/features/authentication/presentation/screen/login_screen.dart';
import 'package:atlas_pos/src/features/dashboard/presentation/screen/dashboard_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
    required this.lightThemeData,
    required this.darkThemeData,
  });

  final SettingsController settingsController;
  final ThemeData lightThemeData;
  final ThemeData darkThemeData;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthenticationProvider>(
          create: (_) => serviceLocator<AuthenticationProvider>(),
        ),
      ],
      child: ListenableBuilder(
        listenable: settingsController,
        builder: (BuildContext context, Widget? child) {
          return Consumer<AuthenticationProvider>(
            builder: (context, authProvider, child) {
              return MaterialApp(
                restorationScopeId: 'app',
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en', ''),
                ],
                onGenerateTitle: (BuildContext context) => AppLocalizations.of(context)!.appTitle,
                theme: lightThemeData,
                darkTheme: darkThemeData,
                themeMode: settingsController.themeMode,
                onGenerateRoute: (RouteSettings routeSettings) {
                  return MaterialPageRoute<void>(
                    settings: routeSettings,
                    builder: (BuildContext context) {
                      switch (routeSettings.name) {
                        case SettingsView.routeName:
                          return SettingsView(controller: settingsController);
                        case SampleItemDetailsView.routeName:
                          return const SampleItemDetailsView();
                        case SampleItemListView.routeName:
                        default:
                          return const SampleItemListView();
                      }
                    },
                  );
                },
                home: _getHomeScreen(authProvider),
              );
            },
          );
        },
      ),
    );
  }

  Widget _getHomeScreen(AuthenticationProvider authProvider) {
    if (authProvider.isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    } else if (authProvider.data != null) {
      return const DashboardScreen();
    } else {
      return const LoginScreen(); // Show login screen if no data is available
    }
  }
}
