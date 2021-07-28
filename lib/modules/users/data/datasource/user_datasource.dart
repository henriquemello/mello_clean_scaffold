import 'package:clean_mello/modules/users/data/models/user_model.dart';
import 'package:clean_mello/modules/users/data/models/user_model_2.dart';

abstract class UserDatasource{
  Future<List<UserModel>> getUsersFromRemote();
  Future<List<UserModel2>> getUsersFromRemote2();
}