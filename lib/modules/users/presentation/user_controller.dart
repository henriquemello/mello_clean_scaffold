import 'package:clean_mello/modules/core/modules/http/http_error.dart';
import 'package:clean_mello/modules/users/presentation/stores/user_store.dart';
import 'package:clean_mello/modules/users/presentation/user_presenter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserController {
  final UserPresenter userPresenter;
  final UserStore userStore;

  UserController(this.userPresenter, this.userStore);

  void getUsers() async {
    userStore.setLoading(true);
    try {
      final request = await userPresenter.getUsers();
      userStore.setListUsers(request);
    } on HttpError catch (e) {
      print('error $e');
    } finally {
      userStore.setLoading(false);
    }
  }

  void clearUsers() => userStore.clearUsers();
}
