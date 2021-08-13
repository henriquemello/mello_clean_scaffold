import 'package:clean_mello/modules/core/modules/http/http_error.dart';
import 'package:clean_mello/modules/users/data/datasource/user_datasource.dart';
import 'package:clean_mello/modules/users/data/mapper/user_mapper.dart';
import 'package:clean_mello/modules/users/domain/entity/user_entity.dart';
import 'package:clean_mello/modules/users/domain/errors/domain_errors.dart';
import 'package:clean_mello/modules/users/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserDatasource userDatasource;

  UserRepositoryImpl(this.userDatasource);

  @override
  Future<List<UserEntity>> getUsers() async {
    try {
      final listUserModels = await userDatasource.getUsersFromRemote();

      final listUserEntities =
          listUserModels.map((e) => UserMapper.toEntity(e)).toList();
      return listUserEntities;
    } on HttpError catch (e) {
      throw e.error == HttpErrors.badRequest
          ? DomainError.httpServerError
          : DomainError.unexpectedError;
    }
  }

  @override
  Future<void> saveUser(UserEntity user) async {
    try {
      final userModel = UserMapper.toModel(user);
      await userDatasource.saveUser(userModel);
    } on HttpError catch (e) {
      throw e.error == HttpErrors.badRequest
          ? DomainError.httpServerError
          : DomainError.unexpectedError;
    }
  }
}
