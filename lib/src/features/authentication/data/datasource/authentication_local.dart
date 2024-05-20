import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:atlas_pos/src/features/authentication/domain/model/authentication_local.dart';
import 'package:atlas_pos/src/core/datasource/local/failure_model.dart';

abstract class AuthenticationDataSourceLocal {
  Future<Either<DataSourceLocalResponseFailure, AuthenticationLocal>> getCacheAuthenticationLocal();
  Future<void> setCacheAuthenticationLocal(AuthenticationLocal authenticationLocal);
}

// ignore: constant_identifier_names
const String CACHED_AUTHENTICATION_LOCAL = 'CACHED_AUTHENTICATION_LOCAL';

class AuthenticationDataSourceLocalImpl implements AuthenticationDataSourceLocal {
  final SharedPreferences sharedPreferences;

  AuthenticationDataSourceLocalImpl(this.sharedPreferences);

  @override
  Future<Either<DataSourceLocalResponseFailure, AuthenticationLocal>> getCacheAuthenticationLocal() async {
    final jsonString = sharedPreferences.getString(CACHED_AUTHENTICATION_LOCAL);

    if (jsonString != null) {
      final authenticationLocal = AuthenticationLocal.fromJson(jsonDecode(jsonString));
      return Right(authenticationLocal);
    } else {
      return const Left(
        DataSourceLocalResponseFailure(
          statusCode: 404,
          error: 'Not found',
          message: 'Authentication data not found',
        ),
      );
    }
  }

  @override
  Future<void> setCacheAuthenticationLocal(AuthenticationLocal authenticationLocal) async {
    final jsonString = jsonEncode(authenticationLocal.toJson());
    await sharedPreferences.setString(CACHED_AUTHENTICATION_LOCAL, jsonString);
  }
}
