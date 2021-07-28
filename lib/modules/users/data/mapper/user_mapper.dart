
import 'package:clean_mello/modules/users/data/models/user_model.dart';
import 'package:clean_mello/modules/users/domain/entity/user_entity.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserMapper {
  UserEntity toEntity(UserModel model) {
    return UserEntity(
      nome: model.name,
      email: model.email,
    );
  }
}
