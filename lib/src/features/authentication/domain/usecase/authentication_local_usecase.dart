import 'package:atlas_pos/src/core/datasource/local/failure_model.dart';
import 'package:dartz/dartz.dart';

import 'package:atlas_pos/src/core/datasource/remote/failure_model.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/authentication_local.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/authentication_local_payload.dart';

import 'package:atlas_pos/src/features/authentication/domain/repository/authentication_local_repository.dart';

class AuthenticationUseCase {
  final AuthenticationRepository repository;

  AuthenticationUseCase(this.repository);

  Future<Either<DataSourceRemoteResponseFailure, AuthenticationLocal>> authenticationLocalRemote(
    AuthenticationLocalPayload authenticationLocalPayload,
  ) async {
    return await repository.authenticationLocalRemote(authenticationLocalPayload);
  }

  Future<Either<DataSourceLocalResponseFailure, AuthenticationLocal>> getCacheAuthenticationLocal() async {
    return await repository.getCacheAuthenticationLocal();
  }

  Future<void> setCacheAuthenticationLocal(AuthenticationLocal authenticationLocal) async {
    return await repository.setCacheAuthenticationLocal(authenticationLocal);
  }
}
