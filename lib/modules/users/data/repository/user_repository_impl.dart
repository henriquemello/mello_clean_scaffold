import 'package:clean_mello/modules/users/data/datasource/user_datasource.dart';
import 'package:clean_mello/modules/users/data/mapper/user_mapper.dart';
import 'package:clean_mello/modules/users/domain/entity/user_entity.dart';
import 'package:clean_mello/modules/users/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserDatasource userDatasource;
  final UserMapper userMapper;

  UserRepositoryImpl(this.userDatasource, this.userMapper);

  @override
  Future<List<UserEntity>> getUsers() async {
    final listUserModels = await userDatasource.getUsersFromRemote();

    final listUserEntities = listUserModels.map((e) => userMapper.toEntity(e)).toList();
    return listUserEntities;
  }
}
