import 'package:clean_mello/modules/core/modules/http/http_request.dart';

class HttpError implements Exception {
  final dynamic data;
  final int statusCode;
  final HttpRequest httpRequest;

  HttpError({
    this.data,
    this.statusCode,
    this.httpRequest,
  });
}
