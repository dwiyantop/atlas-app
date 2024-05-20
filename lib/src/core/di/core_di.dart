import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:atlas_pos/src/core/di/service_locator.dart';
import 'package:atlas_pos/src/core/datasource/remote/client.dart';

class CoreDI {
  Future<void> configureDependency() async {
    serviceLocator.registerLazySingleton(
      () => http.Client(),
    );
    serviceLocator.registerLazySingleton<DataSourceRemoteClient>(
      () => DataSourceRemoteClient(http.Client(), 'https://atlas-wms-api.petsircle.com'),
    );

    final sharedPreferences = await SharedPreferences.getInstance();
    serviceLocator.registerLazySingleton<SharedPreferences>(
      () => sharedPreferences,
    );
  }
}
