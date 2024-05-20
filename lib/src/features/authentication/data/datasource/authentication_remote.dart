import 'dart:convert';
import 'package:dartz/dartz.dart';

import 'package:atlas_pos/src/core/datasource/remote/success_model.dart';
import 'package:atlas_pos/src/core/datasource/remote/failure_model.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/authentication_local.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/authentication_local_payload.dart';

import 'package:atlas_pos/src/core/datasource/remote/client.dart';

abstract class AuthenticationDataSourceRemote {
  Future<Either<DataSourceRemoteResponseFailure, AuthenticationLocal>> authenticationLocal(
    AuthenticationLocalPayload authenticationLocalPayload,
  );
}

class AuthenticationDataSourceRemoteImpl implements AuthenticationDataSourceRemote {
  final RemoteClient remoteClient;
  final String endpoint;

  AuthenticationDataSourceRemoteImpl(
    this.remoteClient,
    this.endpoint,
  );

  @override
  Future<Either<DataSourceRemoteResponseFailure, AuthenticationLocal>> authenticationLocal(
    AuthenticationLocalPayload authenticationLocalPayload,
  ) async {
    final response = await remoteClient.post(
      endpoint,
      optionHeaders: {},
      body: authenticationLocalPayload.toJson(),
    );

    final decodedBody = json.decode(response.body);

    if (response.statusCode == 201) {
      final result = DataSourceRemoteResponseSuccess<AuthenticationLocal>.fromJson(
        decodedBody,
        (data) => AuthenticationLocal.fromJson(data),
      );

      return Right(result.data!);
    } else {
      return Left(DataSourceRemoteResponseFailure.fromJson(decodedBody));
    }
  }
}
