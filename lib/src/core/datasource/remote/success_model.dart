import 'package:equatable/equatable.dart';

class DataSourceRemoteResponseSuccess<DataT> extends Equatable {
  const DataSourceRemoteResponseSuccess({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  final int statusCode;
  final String message;
  final DataT? data;

  factory DataSourceRemoteResponseSuccess.fromJson(
    Map<String, dynamic> json,
    DataT Function(Map<String, dynamic>) fromJsonDataT,
  ) {
    return DataSourceRemoteResponseSuccess(
      statusCode: json['statusCode'],
      message: json['message'],
      data: json['data'] != null ? fromJsonDataT(json['data']) : null,
    );
  }

  Map<String, dynamic> toJson(Map<String, dynamic> Function(DataT) toJsonDataT) => {
        'statusCode': statusCode,
        'message': message,
        'data': data != null ? toJsonDataT(data as DataT) : null,
      };

  @override
  List<Object?> get props => [
        statusCode,
        message,
        data,
      ];
}
