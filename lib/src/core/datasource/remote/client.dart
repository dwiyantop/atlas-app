import 'package:http/http.dart' as http;

abstract class RemoteClient {
  Future<http.Response> get(
    String endpoint, {
    Map<String, String>? optionHeaders,
    Map<String, dynamic>? queryParameters,
  });

  Future<http.Response> post(
    String endpoint, {
    Map<String, String>? optionHeaders,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  });

  Future<http.Response> patch(
    String endpoint, {
    Map<String, String>? optionHeaders,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  });

  Future<http.Response> delete(
    String endpoint, {
    Map<String, String>? optionHeaders,
    Map<String, dynamic>? queryParameters,
  });
}

class DataSourceRemoteClient extends RemoteClient {
  final String baseUrl;
  final http.Client client;

  DataSourceRemoteClient(this.client, this.baseUrl);

  @override
  Future<http.Response> get(
    String endpoint, {
    Map<String, String>? optionHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    final uri = Uri.parse('$baseUrl$endpoint');
    final finalUri = uri.replace(queryParameters: queryParameters);

    try {
      return http.get(
        finalUri,
        headers: optionHeaders,
      );
    } catch (e) {
      throw Exception('Failed to perform GET request: $e');
    }
  }

  @override
  Future<http.Response> post(
    String endpoint, {
    Map<String, String>? optionHeaders,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    final uri = Uri.parse('$baseUrl$endpoint');
    final finalUri = uri.replace(queryParameters: queryParameters);

    try {
      return await http.post(
        finalUri,
        headers: optionHeaders,
        body: body,
      );
    } catch (e) {
      throw Exception('Failed to perform POST request: $e');
    }
  }

  @override
  Future<http.Response> patch(
    String endpoint, {
    Map<String, String>? optionHeaders,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    final uri = Uri.parse('$baseUrl$endpoint');
    final finalUri = uri.replace(queryParameters: queryParameters);

    try {
      return http.patch(
        finalUri,
        headers: optionHeaders,
        body: body,
      );
    } catch (e) {
      throw Exception('Failed to perform PATCH request: $e');
    }
  }

  @override
  Future<http.Response> delete(
    String endpoint, {
    Map<String, String>? optionHeaders,
    Map<String, dynamic>? queryParameters,
  }) async {
    final uri = Uri.parse('$baseUrl$endpoint');
    final finalUri = uri.replace(queryParameters: queryParameters);

    try {
      return http.delete(
        finalUri,
        headers: optionHeaders,
      );
    } catch (e) {
      throw Exception('Failed to perform DELETE request: $e');
    }
  }
}
