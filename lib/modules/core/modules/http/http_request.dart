class HttpRequest {
  final String method;
  final String path;
  final dynamic data;
  final Map<String, dynamic>? queryParameters;
  final Map<String, dynamic>? headers;

  HttpRequest({
    required this.method,
    required this.path,
    this.data,
    this.queryParameters,
    this.headers,
  });

  HttpRequest addHeaders(
    Map<String, dynamic> headers,
  ) =>
      HttpRequest(
          method: this.method,
          path: this.path,
          data: this.data,
          queryParameters: this.queryParameters,
          headers: headers);
}
