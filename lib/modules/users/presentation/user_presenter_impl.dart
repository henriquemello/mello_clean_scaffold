import 'package:clean_mello/modules/users/domain/entity/user_entity.dart';
import 'package:clean_mello/modules/users/domain/usecases/get_users_usecase.dart';
import 'package:clean_mello/modules/users/presentation/user_presenter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserPresenter)
class UserPresenterImple implements UserPresenter {
  final GetUsersUsecase getUsersUsecase;

  UserPresenterImple(this.getUsersUsecase);

  @override
  Future<List<UserEntity>> getUsers() async {
    return await getUsersUsecase();
  }
}
