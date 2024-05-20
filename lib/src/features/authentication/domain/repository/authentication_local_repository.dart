import 'package:atlas_pos/src/core/datasource/local/failure_model.dart';
import 'package:atlas_pos/src/features/authentication/data/datasource/authentication_local.dart';
import 'package:dartz/dartz.dart';

import 'package:atlas_pos/src/core/datasource/remote/failure_model.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/authentication_local.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/authentication_local_payload.dart';

import 'package:atlas_pos/src/features/authentication/data/datasource/authentication_remote.dart';

abstract class AuthenticationRepository {
  Future<Either<DataSourceRemoteResponseFailure, AuthenticationLocal>> authenticationLocalRemote(
    AuthenticationLocalPayload authenticationLocalPayload,
  );

  Future<Either<DataSourceLocalResponseFailure, AuthenticationLocal>> getCacheAuthenticationLocal();
  Future<void> setCacheAuthenticationLocal(AuthenticationLocal authenticationLocal);
}

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSourceRemote authenticationDataSourceRemote;
  final AuthenticationDataSourceLocal authenticationDataSourceLocal;

  AuthenticationRepositoryImpl(
    this.authenticationDataSourceRemote,
    this.authenticationDataSourceLocal,
  );

  @override
  Future<Either<DataSourceRemoteResponseFailure, AuthenticationLocal>> authenticationLocalRemote(
    AuthenticationLocalPayload authenticationLocalPayload,
  ) async {
    return await authenticationDataSourceRemote.authenticationLocal(authenticationLocalPayload);
  }

  @override
  Future<Either<DataSourceLocalResponseFailure, AuthenticationLocal>> getCacheAuthenticationLocal() async {
    return await authenticationDataSourceLocal.getCacheAuthenticationLocal();
  }

  @override
  Future<void> setCacheAuthenticationLocal(AuthenticationLocal authenticationLocal) async {
    return await authenticationDataSourceLocal.setCacheAuthenticationLocal(authenticationLocal);
  }
}
