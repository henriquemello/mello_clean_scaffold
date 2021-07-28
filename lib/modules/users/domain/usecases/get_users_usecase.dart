import 'package:clean_mello/modules/users/domain/entity/user_entity.dart';
import 'package:clean_mello/modules/users/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

mixin GetUsersUsecase {
  Future<List<UserEntity>> call();
}

@LazySingleton(as: GetUsersUsecase)
class GetUsersUsecaseImpl implements GetUsersUsecase {
  final UserRepository userRepository;

  GetUsersUsecaseImpl(this.userRepository);

  Future<List<UserEntity>> call() async {
    return await userRepository.getUsers();
  }
}
