import 'package:clean_mello/modules/core/modules/http/http_error.dart';
import 'package:clean_mello/modules/pets/presentation/pet_presenter.dart';
import 'package:clean_mello/modules/pets/presentation/stores/pet_store.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PetController {
  final PetPresenter petPresenter;
  final PetStore petStore;

  PetController(this.petPresenter, this.petStore);

  Future getPets() async {
    //setLoading true
    try {
      final request = await petPresenter.getPets();
      petStore.setListPets(request);
    } on HttpError catch (e) {
      print('error $e');
    } finally {
      //setLoading false
    }
  }
}
