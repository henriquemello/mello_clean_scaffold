import 'package:clean_mello/modules/users/domain/entity/user_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

@Injectable()
class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  @observable
  List<UserEntity> listUsers = [];

  @observable
  bool isLoading = false;

  @action
  setListUsers(value) => listUsers = value;

  @action
  clearUsers() => listUsers = [];

  @action
  setLoading(value) => isLoading = value;
}
