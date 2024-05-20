import 'package:flutter/material.dart';
import 'package:atlas_pos/src/features/authentication/domain/usecase/authentication_local_usecase.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/authentication_local_payload.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/authentication_local.dart';

class AuthenticationProvider extends ChangeNotifier {
  final AuthenticationUseCase _authenticationUseCase;

  AuthenticationProvider(this._authenticationUseCase) {
    initialize();
  }

  bool _isLoading = false;
  String? _errorMessage;
  AuthenticationLocal? _data;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  AuthenticationLocal? get data => _data;

  Future<void> initialize() async {
    await getCacheAuthenticationLocal();
  }

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void setErrorMessage(String? message) {
    _errorMessage = message;
    notifyListeners();
  }

  void setData(AuthenticationLocal authenticationLocal) {
    _data = authenticationLocal;
    notifyListeners();
  }

  void resetAll() {
    _isLoading = false;
    _errorMessage = null;
    _data = null;
    notifyListeners();
  }

  Future<void> authenticationLocal(AuthenticationLocalPayload authenticationLocalPayload) async {
    resetAll();
    setLoading(true);

    try {
      final result = await _authenticationUseCase.authenticationLocalRemote(authenticationLocalPayload);

      await result.fold(
        (failure) {
          setErrorMessage('Failed to login: ${failure.message}');
        },
        (authenticationLocal) async {
          await _authenticationUseCase.setCacheAuthenticationLocal(authenticationLocal);
          setData(authenticationLocal);
          setLoading(false);
        },
      );
    } catch (e) {
      setErrorMessage('Failed to login: $e');
    }

    // setLoading(false);
  }

  Future<void> getCacheAuthenticationLocal() async {
    try {
      final result = await _authenticationUseCase.getCacheAuthenticationLocal();

      await result.fold(
        (failure) {
          setErrorMessage('Failed to login: ${failure.message}');
        },
        (authenticationLocal) async {
          setData(authenticationLocal);
        },
      );
    } catch (e) {
      setErrorMessage('Failed to login: $e');
    } finally {
      setLoading(false);
    }
  }
}
