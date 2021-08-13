import 'package:clean_mello/modules/core/modules/http/http_request.dart';

class HttpError implements Exception {
  final dynamic data;
  final int statusCode;
  final HttpRequest httpRequest;
  final HttpErrors error;

  HttpError({
    this.data,
    this.statusCode,
    this.httpRequest,
    this.error,
  });
}

enum HttpErrors {
  badRequest,
  serverError,
}
