import 'package:equatable/equatable.dart';

class AuthenticationLocalPayload extends Equatable {
  const AuthenticationLocalPayload({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  factory AuthenticationLocalPayload.fromJson(Map<String, dynamic> json) {
    return AuthenticationLocalPayload(
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
