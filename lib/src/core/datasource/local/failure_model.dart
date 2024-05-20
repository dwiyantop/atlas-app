import 'package:equatable/equatable.dart';

class DataSourceLocalResponseFailure extends Equatable {
  const DataSourceLocalResponseFailure({
    required this.statusCode,
    required this.message,
    required this.error,
  });

  final int statusCode;
  final String message;
  final dynamic error;

  factory DataSourceLocalResponseFailure.fromJson(Map<String, dynamic> json) {
    return DataSourceLocalResponseFailure(
      statusCode: json['statusCode'],
      message: json['message'],
      error: json['error'],
    );
  }

  Map<String, dynamic> toJson() => {
        'statusCode': statusCode,
        'message': message,
        'error': error,
      };

  @override
  List<Object?> get props => [
        statusCode,
        message,
      ];
}
