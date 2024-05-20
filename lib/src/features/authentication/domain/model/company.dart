import 'package:equatable/equatable.dart';

class Company extends Equatable {
  const Company({
    required this.id,
    required this.name,
    required this.logo,
    required this.email,
    required this.phoneNumber,
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

  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String? logo;
  final String addressLine1;
  final String? addressLine2;
  final String country;
  final String province;
  final String city;
  final String postalCode;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      id: json['id'],
      name: json['name'],
      logo: json['logo'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      addressLine1: json['addressLine1'],
      addressLine2: json['addressLine2'],
      country: json['country'],
      province: json['province'],
      city: json['city'],
      postalCode: json['postalCode'],
      createdAt: DateTime.parse(json['createdAt'] ?? ''),
      updatedAt: DateTime.parse(json['updatedAt'] ?? ''),
      deletedAt: json['deletedAt'] != null ? DateTime.parse(json['deletedAt']) : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'logo': logo,
        'email': email,
        'phoneNumber': phoneNumber,
        'addressLine1': addressLine1,
        'addressLine2': addressLine2,
        'country': country,
        'province': province,
        'city': city,
        'postalCode': postalCode,
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt.toIso8601String(),
        'deletedAt': deletedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        id,
        name,
        logo,
        email,
        phoneNumber,
        addressLine1,
        addressLine2,
        country,
        province,
        city,
        postalCode,
        createdAt,
        updatedAt,
        deletedAt,
      ];
}
