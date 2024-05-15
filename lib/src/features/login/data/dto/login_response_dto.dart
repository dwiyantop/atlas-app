import 'dart:convert';

AuthenticationResponse authenticationResponseFromJson(String str) => AuthenticationResponse.fromJson(json.decode(str));
String authenticationResponseToJson(AuthenticationResponse data) => json.encode(data.toJson());

class AuthenticationResponse {
  int statusCode;
  String message;
  Data data;

  AuthenticationResponse({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) => AuthenticationResponse(
        statusCode: json['statusCode'],
        message: json['message'],
        data: Data.fromJson(json['data']),
      );

  Map<String, dynamic> toJson() => {
        'statusCode': statusCode,
        'message': message,
        'data': data.toJson(),
      };
}

class Data {
  String strategy;
  String accessToken;
  int expiresIn;
  String refreshToken;
  int refreshTokenExpiresIn;
  User user;

  Data({
    required this.strategy,
    required this.accessToken,
    required this.expiresIn,
    required this.refreshToken,
    required this.refreshTokenExpiresIn,
    required this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        strategy: json['strategy'],
        accessToken: json['accessToken'],
        expiresIn: json['expiresIn'],
        refreshToken: json['refreshToken'],
        refreshTokenExpiresIn: json['refreshTokenExpiresIn'],
        user: User.fromJson(json['user']),
      );

  Map<String, dynamic> toJson() => {
        'strategy': strategy,
        'accessToken': accessToken,
        'expiresIn': expiresIn,
        'refreshToken': refreshToken,
        'refreshTokenExpiresIn': refreshTokenExpiresIn,
        'user': user.toJson(),
      };
}

class User {
  String id;
  String? email;
  String? username;
  String? phoneNumber;
  String? googleId;
  String? facebookId;
  bool verifiedEmail;
  bool verifiedPhoneNumber;
  String status;
  DateTime? lastLoggedIn;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime? deletedAt;
  Role role;
  Profile profile;
  List<UserCompany> userCompany;

  User({
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

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        email: json['email'] ?? '',
        username: json['username'] ?? '',
        phoneNumber: json['phoneNumber'] ?? '',
        googleId: json['googleId'] ?? '',
        facebookId: json['facebookId'] ?? '',
        verifiedEmail: json['verifiedEmail'],
        verifiedPhoneNumber: json['verifiedPhoneNumber'],
        status: json['status'],
        lastLoggedIn: json['lastLoggedIn'] != null ? DateTime.parse(json['lastLoggedIn']) : null,
        createdAt: DateTime.parse(json['createdAt']),
        updatedAt: DateTime.parse(json['updatedAt']),
        deletedAt: json['deletedAt'] != null ? DateTime.parse(json['deletedAt']) : null,
        role: Role.fromJson(json['role']),
        profile: Profile.fromJson(json['profile']),
        userCompany: List<UserCompany>.from(json['userCompany'].map((x) => UserCompany.fromJson(x))),
      );

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
        'lastLoggedIn': lastLoggedIn != null ? lastLoggedIn!.toIso8601String() : '',
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt.toIso8601String(),
        'deletedAt': deletedAt != null ? deletedAt!.toIso8601String() : '',
        'role': role.toJson(),
        'profile': profile.toJson(),
        'userCompany': List<dynamic>.from(userCompany.map((x) => x.toJson())),
      };
}

class Role {
  String id;
  String name;
  String label;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime? deletedAt;

  Role({
    required this.id,
    required this.name,
    required this.label,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json['id'],
        name: json['name'],
        label: json['label'],
        createdAt: DateTime.parse(json['createdAt']),
        updatedAt: DateTime.parse(json['updatedAt']),
        deletedAt: json['deletedAt'] != null ? DateTime.parse(json['deletedAt']) : null,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'label': label,
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt.toIso8601String(),
        'deletedAt': deletedAt != null ? deletedAt!.toIso8601String() : '',
      };
}

class Profile {
  String id;
  String? firstName;
  String? lastName;
  String? gender;
  DateTime? dob;
  String? avatar;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime? deletedAt;

  Profile({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dob,
    required this.avatar,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json['id'],
        firstName: json['firstName'] ?? '',
        lastName: json['lastName'] ?? '',
        gender: json['gender'] ?? '',
        dob: json['dob'] ?? '',
        avatar: json['avatar'] ?? '',
        createdAt: DateTime.parse(json['createdAt']),
        updatedAt: DateTime.parse(json['updatedAt']),
        deletedAt: json['deletedAt'] != null ? DateTime.parse(json['deletedAt']) : null,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'gender': gender,
        'dob': dob,
        'avatar': avatar,
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt.toIso8601String(),
        'deletedAt': deletedAt != null ? deletedAt!.toIso8601String() : '',
      };
}

class UserCompany {
  String id;
  Company company;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime? deletedAt;

  UserCompany({
    required this.id,
    required this.company,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory UserCompany.fromJson(Map<String, dynamic> json) => UserCompany(
        id: json['id'],
        company: Company.fromJson(json['company']),
        createdAt: DateTime.parse(json['createdAt']),
        updatedAt: DateTime.parse(json['updatedAt']),
        deletedAt: json['deletedAt'] != null ? DateTime.parse(json['deletedAt']) : null,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'company': company.toJson(),
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt.toIso8601String(),
        'deletedAt': deletedAt != null ? deletedAt!.toIso8601String() : '',
      };
}

class Company {
  String id;
  String name;
  String email;
  String phoneNumber;
  String? logo;
  String addressLine1;
  String? addressLine2;
  String country;
  String province;
  String city;
  String postalCode;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime? deletedAt;

  Company({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.logo,
    required this.addressLine1,
    required this.addressLine2,
    required this.country,
    required this.province,
    required this.city,
    required this.postalCode,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        phoneNumber: json['phoneNumber'],
        logo: json['logo'] ?? '',
        addressLine1: json['addressLine1'],
        addressLine2: json['addressLine2'] ?? '',
        country: json['country'],
        province: json['province'],
        city: json['city'],
        postalCode: json['postalCode'],
        createdAt: DateTime.parse(json['createdAt']),
        updatedAt: DateTime.parse(json['updatedAt']),
        deletedAt: json['deletedAt'] != null ? DateTime.parse(json['deletedAt']) : null,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'phoneNumber': phoneNumber,
        'logo': logo,
        'addressLine1': addressLine1,
        'addressLine2': addressLine2,
        'country': country,
        'province': province,
        'city': city,
        'postalCode': postalCode,
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt.toIso8601String(),
        'deletedAt': deletedAt != null ? deletedAt!.toIso8601String() : '',
      };
}
