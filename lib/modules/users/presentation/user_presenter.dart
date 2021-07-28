import 'package:clean_mello/modules/users/domain/entity/user_entity.dart';

abstract class UserPresenter {
  Future<List<UserEntity>> getUsers();
}
