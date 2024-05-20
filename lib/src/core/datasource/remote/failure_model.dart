import 'package:equatable/equatable.dart';

class DataSourceRemoteResponseFailure extends Equatable {
  const DataSourceRemoteResponseFailure({
    required this.statusCode,
    required this.message,
    required this.error,
  });

  final int statusCode;
  final String message;
  final dynamic error;

  factory DataSourceRemoteResponseFailure.fromJson(Map<String, dynamic> json) {
    return DataSourceRemoteResponseFailure(
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
