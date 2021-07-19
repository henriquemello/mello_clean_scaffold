
import 'package:clean_mello/modules/core/modules/http/http_request.dart';

class HttpResponse {
  final dynamic data;
  final int statusCode;
  final HttpRequest httpRequest;

  HttpResponse({
    this.data,
    this.statusCode,
    this.httpRequest,
  });
}
