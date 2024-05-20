import 'package:equatable/equatable.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/user.dart';

class AuthenticationLocal extends Equatable {
  const AuthenticationLocal({
    required this.strategy,
    required this.accessToken,
    required this.expiresIn,
    required this.refreshToken,
    required this.refreshTokenExpiresIn,
    required this.user,
  });

  final String strategy;
  final String accessToken;
  final int expiresIn;
  final String refreshToken;
  final int refreshTokenExpiresIn;
  final User user;

  factory AuthenticationLocal.fromJson(Map<String, dynamic> json) {
    return AuthenticationLocal(
      strategy: json['strategy'],
      accessToken: json['accessToken'],
      expiresIn: json['expiresIn'],
      refreshToken: json['refreshToken'],
      refreshTokenExpiresIn: json['refreshTokenExpiresIn'],
      user: User.fromJson(json['user']),
    );
  }

  Map<String, dynamic> toJson() => {
        'strategy': strategy,
        'accessToken': accessToken,
        'expiresIn': expiresIn,
        'refreshToken': refreshToken,
        'refreshTokenExpiresIn': refreshTokenExpiresIn,
        'user': user.toJson(),
      };

  @override
  List<Object?> get props => [
        strategy,
        accessToken,
        expiresIn,
        refreshToken,
        refreshTokenExpiresIn,
        user,
      ];
}
