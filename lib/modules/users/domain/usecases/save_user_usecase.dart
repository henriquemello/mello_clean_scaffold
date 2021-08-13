import 'package:clean_mello/modules/users/domain/entity/user_entity.dart';
import 'package:clean_mello/modules/users/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

abstract class SaveUserUsecase {
  Future<void> call(UserEntity entity);
}

@LazySingleton(as: SaveUserUsecase)
class SaveUserUsecaseImpl implements SaveUserUsecase {
  final UserRepository userRepository;

  SaveUserUsecaseImpl(this.userRepository);

  Future<void> call(UserEntity user) async {
    return await userRepository.saveUser(user);
  }
}
