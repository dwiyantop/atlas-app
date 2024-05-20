import 'package:equatable/equatable.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/role.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/profile.dart';
import 'package:atlas_pos/src/features/authentication/domain/model/user_company.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.email,
    required this.username,
    required this.phoneNumber,
    required this.googleId,
    required this.facebookId,
    required this.verifiedEmail,
    required this.verifiedPhoneNumber,
    required this.status,
    required this.lastLoggedIn,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.role,
    required this.profile,
    required this.userCompany,
  });

  final String id;
  final String? email;
  final String? username;
  final String? phoneNumber;
  final String? googleId;
  final String? facebookId;
  final bool verifiedEmail;
  final bool verifiedPhoneNumber;
  final String status;
  final DateTime? lastLoggedIn;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final Role role;
  final Profile profile;
  final List<UserCompany> userCompany;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      email: json['email'],
      username: json['username'],
      phoneNumber: json['phoneNumber'],
      googleId: json['googleId'],
      facebookId: json['facebookId'],
      verifiedEmail: json['verifiedEmail'],
      verifiedPhoneNumber: json['verifiedPhoneNumber'],
      status: json['status'],
      lastLoggedIn: json['lastLoggedIn'] != null ? DateTime.parse(json['lastLoggedIn']) : null,
      createdAt: DateTime.parse(json['createdAt'] ?? ''),
      updatedAt: DateTime.parse(json['updatedAt'] ?? ''),
      deletedAt: json['deletedAt'] != null ? DateTime.parse(json['deletedAt']) : null,
      role: Role.fromJson(json['role']),
      profile: Profile.fromJson(json['profile']),
      userCompany: List<UserCompany>.from(json['userCompany']!.map((x) => UserCompany.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'phoneNumber': phoneNumber,
        'googleId': googleId,
        'facebookId': facebookId,
        'verifiedEmail': verifiedEmail,
        'verifiedPhoneNumber': verifiedPhoneNumber,
        'status': status,
        'lastLoggedIn': lastLoggedIn?.toIso8601String(),
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt.toIso8601String(),
        'deletedAt': deletedAt?.toIso8601String(),
        'role': role.toJson(),
        'profile': profile.toJson(),
        'userCompany': userCompany.map((x) => x.toJson()).toList(),
      };

  @override
  List<Object?> get props => [
        id,
        email,
        username,
        phoneNumber,
        googleId,
        facebookId,
        verifiedEmail,
        verifiedPhoneNumber,
        status,
        lastLoggedIn,
        createdAt,
        updatedAt,
        deletedAt,
        role,
        profile,
        userCompany,
      ];
}
