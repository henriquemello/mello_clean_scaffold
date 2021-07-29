import 'package:clean_mello/modules/users/data/models/user_model.dart';

abstract class UserDatasource{
  Future<List<UserModel>> getUsersFromRemote();
}