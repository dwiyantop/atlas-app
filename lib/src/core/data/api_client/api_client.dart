import 'dart:convert';
import 'package:http/http.dart' as http;

enum HttpStatus {
  success,
  error,
}

class HttpResponse<DataT> {
  final HttpStatus status;
  final int code;
  final String message;
  final DataT? data;
  final String? error;

  HttpResponse({
    required this.status,
    required this.code,
    required this.message,
    this.data,
    this.error,
  });
}

class HttpClient {
  String baseUrl;

  HttpClient(this.baseUrl);

  Future<HttpResponse<DataT>> get<ParamsT, DataT>(
    String endpoint, {
    Map<String, String>? optionHeaders,
    ParamsT? queryParameters,
    required DataT Function(dynamic) fromJson,
  }) async {
    try {
      final uri = Uri.parse('$baseUrl/$endpoint');

      final response = await http.get(
        uri,
        headers: optionHeaders,
      );

      final statusCode = response.statusCode;
      final decodedBody = json.decode(response.body);

      if (statusCode == 200) {
        return HttpResponse(
          status: HttpStatus.success,
          code: response.statusCode,
          message: decodedBody['message'] ?? '',
          data: fromJson(decodedBody['data']),
        );
      } else {
        return HttpResponse(
          status: HttpStatus.error,
          code: response.statusCode,
          message: decodedBody['message'] ?? '',
          error: decodedBody['error'] ?? '',
        );
      }
    } catch (e) {
      return HttpResponse(
        status: HttpStatus.error,
        code: -1,
        message: 'Error: $e',
        data: null,
      );
    }
  }

  Future<HttpResponse<Object>> post<BodyT>(
    String endpoint, {
    Map<String, String>? optionHeaders,
    required BodyT body,
  }) async {
    try {
      final uri = Uri.parse('$baseUrl/$endpoint');

      final response = await http.get(
        uri,
        headers: optionHeaders,
      );

      final statusCode = response.statusCode;
      final decodedBody = json.decode(response.body);

      if (statusCode == 201) {
        return HttpResponse(
          status: HttpStatus.success,
          code: response.statusCode,
          message: decodedBody['message'] ?? '',
        );
      } else {
        return HttpResponse(
          status: HttpStatus.error,
          code: response.statusCode,
          message: decodedBody['message'] ?? '',
          error: decodedBody['error'] ?? '',
        );
      }
    } catch (e) {
      return HttpResponse(
        status: HttpStatus.error,
        code: -1,
        message: 'Error: $e',
        data: null,
      );
    }
  }

  Future<HttpResponse<Object>> patch<BodyT>(
    String endpoint, {
    Map<String, String>? optionHeaders,
    BodyT? body,
  }) async {
    try {
      final uri = Uri.parse('$baseUrl$endpoint');

      final response = await http.patch(
        uri,
        headers: optionHeaders,
        body: json.encode(body),
      );

      final statusCode = response.statusCode;
      final decodedBody = json.decode(response.body);

      if (statusCode == 200) {
        return HttpResponse(
          status: HttpStatus.success,
          code: response.statusCode,
          message: decodedBody['message'] ?? '',
        );
      } else {
        return HttpResponse(
          status: HttpStatus.error,
          code: response.statusCode,
          message: decodedBody['message'] ?? '',
          error: decodedBody['error'] ?? '',
        );
      }
    } catch (e) {
      return HttpResponse(
        status: HttpStatus.error,
        code: -1,
        message: 'Error: $e',
        data: null,
      );
    }
  }

  Future<HttpResponse<Object>> delete<DataT>(
    String endpoint, {
    Map<String, String>? optionHeaders,
    required DataT Function(dynamic) fromJson,
  }) async {
    try {
      final uri = Uri.parse('$baseUrl$endpoint');

      final response = await http.delete(
        uri,
        headers: optionHeaders,
      );

      final statusCode = response.statusCode;
      final decodedBody = json.decode(response.body);

      if (statusCode == 200) {
        return HttpResponse(
          status: HttpStatus.success,
          code: response.statusCode,
          message: decodedBody['message'] ?? '',
        );
      } else {
        return HttpResponse(
          status: HttpStatus.error,
          code: response.statusCode,
          message: decodedBody['message'] ?? '',
          error: decodedBody['error'] ?? '',
        );
      }
    } catch (e) {
      return HttpResponse(
        status: HttpStatus.error,
        code: -1,
        message: 'Error: $e',
        data: null,
      );
    }
  }
}
