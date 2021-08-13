import 'package:clean_mello/modules/users/domain/entity/user_entity.dart';

abstract class UserRepository{
  Future<List<UserEntity>> getUsers();
  Future<void> saveUser(UserEntity user);
}