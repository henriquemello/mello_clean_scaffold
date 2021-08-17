import 'dart:convert';
import 'dart:html';

import 'package:clean_mello/modules/core/errors.dart';
import 'package:clean_mello/modules/core/modules/http/http_adapter.dart';
import 'package:clean_mello/modules/core/modules/http/http_error.dart';
import 'package:clean_mello/modules/users/data/datasource/user_datasource.dart';
import 'package:clean_mello/modules/users/data/models/user_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserDatasource)
class UserDatasourceImpl implements UserDatasource {
  final HttpAdapter httpAdapter;

  UserDatasourceImpl(this.httpAdapter);

  @override
  Future<List<UserModel>> getUsersFromRemote() async {
    try {
      //final response = await httpAdapter.get('https://jsonplaceholder.typicode.com/users');

      //return UserModel.fromJsonList(response.data);
      return UserModel.fromJsonList(
          jsonDecode('[{"name":"mello", "email":"henrique@gmail.com"}]'));
    } on HttpError catch (e) {
      throw e.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> saveUser(UserModel user) async {
    await Future.delayed(Duration(seconds: 3));
    try {
      final response = await httpAdapter.post(
        'https://jsonplaceholder.typicode.com/users',
        data: user.toJson(),
      );

      if (response.statusCode == HttpStatus.ok) {
        //success
      } else {
        if (response.statusCode == HttpStatus.badRequest) {
          throw HttpClientError(statusCode: EnumHttpErrors.badRequest);
        } else {
          throw HttpClientError(statusCode: EnumHttpErrors.serverError);
        }
      }
    } on Exception catch (e) {
      throw DatasourceError(message: e.toString());
    }
  }
}
