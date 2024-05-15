class User {
  late String id;
  late String? email;
  late String? username;
  late String? phoneNumber;
  late String? googleId;
  late String? facebookId;
  late bool verifiedEmail;
  late bool verifiedPhoneNumber;
  late String status;
  late DateTime? lastLoggedIn;
  late DateTime createdAt;
  late DateTime updatedAt;
  late DateTime? deletedAt;
  late Role role;
  late Profile profile;
  late List<UserCompany> userCompany;

  User({
    required this.id,
    this.email,
    this.username,
    this.phoneNumber,
    this.googleId,
    this.facebookId,
    required this.verifiedEmail,
    required this.verifiedPhoneNumber,
    required this.status,
    this.lastLoggedIn,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.role,
    required this.profile,
    required this.userCompany,
  });
}

class Role {
  late String id;
  late String name;
  late String label;
  late DateTime createdAt;
  late DateTime updatedAt;
  late DateTime? deletedAt;

  Role({
    required this.id,
    required this.name,
    required this.label,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
}

class Profile {
  late String id;
  late String? firstName;
  late String? lastName;
  late String? gender;
  late DateTime? dob;
  late String? avatar;
  late DateTime createdAt;
  late DateTime updatedAt;
  late DateTime? deletedAt;

  Profile({
    required this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dob,
    this.avatar,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
}

class UserCompany {
  late String id;
  late Company company;
  late DateTime createdAt;
  late DateTime updatedAt;
  late DateTime? deletedAt;

  UserCompany({
    required this.id,
    required this.company,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
}

class Company {
  late String id;
  late String name;
  late String email;
  late String phoneNumber;
  late String? logo;
  late String addressLine1;
  late String? addressLine2;
  late String country;
  late String province;
  late String city;
  late String postalCode;
  late DateTime createdAt;
  late DateTime updatedAt;
  late DateTime? deletedAt;

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
    this.deletedAt,
  });
}
