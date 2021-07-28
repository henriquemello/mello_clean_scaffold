import 'package:clean_mello/modules/core/modules/http/http_adapter.dart';
import 'package:clean_mello/modules/core/modules/http/http_error.dart';
import 'package:clean_mello/modules/users/data/datasource/user_datasource.dart';
import 'package:clean_mello/modules/users/data/models/user_model.dart';
import 'package:clean_mello/modules/users/data/models/user_model_2.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserDatasource)
class UserDatasourceImpl implements UserDatasource {
  final HttpAdapter httpAdapter;

  UserDatasourceImpl(this.httpAdapter);

  @override
  Future<List<UserModel>> getUsersFromRemote() async {
    try {
      final response = await httpAdapter.get('https://jsonplaceholder.typicode.com/users');

      return UserModel.fromJsonList(response.data);
    } on HttpError catch (e) {
      throw e.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<UserModel2>> getUsersFromRemote2() async{
    try {
      final response = await httpAdapter.get('https://jsonplaceholder.typicode.com/users');

      return UserModel2.fromJsonList(response.data);
    } on HttpError catch (e) {
      throw e.data;
    } catch (e) {
      rethrow;
    }
  }
}
