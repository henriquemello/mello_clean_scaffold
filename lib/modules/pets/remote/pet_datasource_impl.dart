import 'package:clean_mello/modules/core/modules/http/http_adapter.dart';
import 'package:clean_mello/modules/core/modules/http/http_error.dart';
import 'package:clean_mello/modules/pets/data/datasource/pet_datasource.dart';
import 'package:clean_mello/modules/pets/data/models/pet_model.dart';

class PetDatasourceImpl implements PetDatasource {
  final HttpAdapter httpAdapter;

  PetDatasourceImpl(this.httpAdapter);

  @override
  Future<List<PetModel>> getPetsFromRemote() async {
    try {
      final response = await httpAdapter.get('path');

      return PetModel.fromJsonList(response.data);
    } on HttpError catch (e) {
      throw e.data;
    } catch (e) {
      rethrow;
    }
  }
}
