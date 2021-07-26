import 'package:clean_mello/modules/core/modules/http/http_adapter.dart';
import 'package:clean_mello/modules/core/modules/http/http_request.dart';
import 'package:clean_mello/modules/core/modules/http/http_response.dart';
import 'package:dio/dio.dart';

class DioHttpAdapter extends HttpAdapter {
  DioHttpAdapter(this.dio);

  final Dio dio;

  HttpResponse _parseResponse(Response response) {
    return HttpResponse(
      data: response.data,
      httpRequest: HttpRequest(
          data: response.request.data,
          headers: response.request.headers,
          method: response.request.method,
          path: response.request.path,
          queryParameters: response.request.queryParameters),
      statusCode: response.statusCode,
    );
  }

  @override
  Future<HttpResponse> delete(
    String path, {
    data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> headers,
  }) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<HttpResponse> get(
    String path, {
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> headers,
  }) async {
    final response = await dio.get(path);
    return _parseResponse(response);
  }

  @override
  Future<HttpResponse> post(
    String path, {
    data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> headers,
  }) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<HttpResponse> put(
    String path, {
    data,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> headers,
  }) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
