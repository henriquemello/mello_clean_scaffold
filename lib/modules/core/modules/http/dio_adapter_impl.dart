import 'package:clean_mello/modules/core/modules/http/http_request.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'http_adapter.dart';
import 'http_error.dart';
import 'http_response.dart';

@LazySingleton(as: HttpAdapter)
class DioAdapterImpl implements HttpAdapter {
  final Dio dio;

  DioAdapterImpl({
    required this.dio,
  });

  Future<HttpResponse> request({
    method,
    path,
    dynamic data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    late HttpRequest httpRequest;
    try {
      httpRequest = HttpRequest(
          method: method,
          path: path,
          data: data,
          headers: headers,
          queryParameters: queryParameters);

      final dioResponse = await dio.request(httpRequest.path,
          data: httpRequest.data,
          options: Options(
            method: httpRequest.method,
            headers: httpRequest.headers,
          ),
          queryParameters: httpRequest.queryParameters);

      HttpResponse response = HttpResponse(
          data: dioResponse.data,
          statusCode: dioResponse.statusCode ?? 200,
          httpRequest: httpRequest);

      return response;
    } on DioError catch (e) {
      if (e.type == DioErrorType.response)
        throw HttpError(
            data: e.response?.data,
            statusCode: e.response?.statusCode ?? 500,
            httpRequest: httpRequest);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<HttpResponse> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async =>
      request(
          method: 'GET',
          path: path,
          headers: headers,
          queryParameters: queryParameters);

  @override
  Future<HttpResponse> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async =>
      request(
          method: 'POST',
          path: path,
          data: data,
          headers: headers,
          queryParameters: queryParameters);

  @override
  Future<HttpResponse> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async =>
      request(
          method: 'PUT',
          path: path,
          data: data,
          headers: headers,
          queryParameters: queryParameters);

  @override
  Future<HttpResponse> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async =>
      request(
          method: 'DELETE',
          path: path,
          data: data,
          headers: headers,
          queryParameters: queryParameters);
}
