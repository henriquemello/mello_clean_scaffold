import '../errors/errors.dart';

abstract class GetUsersUsecase {
  Future<List<String>> call(String login);
}

class GetAllEnterpriseImpl implements GetUsersUsecase {

  GetAllEnterpriseImpl();

  @override
  Future<List<String>> call(String login) async {
    if(login.isNotEmpty) throw FailureGetEnterprises(message: 'Informe o login do usuário');

    return [];
  }
}
