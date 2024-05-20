import 'package:shared_preferences/shared_preferences.dart';
import 'package:atlas_pos/src/core/di/service_locator.dart';
import 'package:atlas_pos/src/core/datasource/remote/client.dart';
import 'package:atlas_pos/src/core/datasource/remote/endpoint.dart';
import 'package:atlas_pos/src/features/authentication/data/datasource/authentication_remote.dart';
import 'package:atlas_pos/src/features/authentication/data/datasource/authentication_local.dart';
import 'package:atlas_pos/src/features/authentication/domain/repository/authentication_local_repository.dart';
import 'package:atlas_pos/src/features/authentication/domain/usecase/authentication_local_usecase.dart';
import 'package:atlas_pos/src/features/authentication/presentation/provider/authentication_provider.dart';

class AuthenticationDI {
  Future<void> configureDependency() async {
    serviceLocator.registerLazySingleton<AuthenticationDataSourceRemote>(
      () => AuthenticationDataSourceRemoteImpl(
        serviceLocator<DataSourceRemoteClient>(),
        DataSourceRemoteEndpoint.authenticationLocal,
      ),
    );
    serviceLocator.registerLazySingleton<AuthenticationDataSourceLocal>(
      () => AuthenticationDataSourceLocalImpl(
        serviceLocator<SharedPreferences>(),
      ),
    );
    serviceLocator.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
        serviceLocator<AuthenticationDataSourceRemote>(),
        serviceLocator<AuthenticationDataSourceLocal>(),
      ),
    );
    serviceLocator.registerLazySingleton<AuthenticationUseCase>(
      () => AuthenticationUseCase(
        serviceLocator<AuthenticationRepository>(),
      ),
    );
    serviceLocator.registerLazySingleton<AuthenticationProvider>(
      () => AuthenticationProvider(
        serviceLocator<AuthenticationUseCase>(),
      ),
    );
  }
}
