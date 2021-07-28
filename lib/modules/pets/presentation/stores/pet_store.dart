import 'package:clean_mello/modules/pets/domain/entity/pet_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'pet_store.g.dart';

@Injectable()
class PetStore = _PetStore with _$PetStore;

abstract class _PetStore with Store {
  @observable
  List<PetEntity> listPets = [];

  @observable
  bool isLoading = false;

  @action
  setListPets(value) => listPets = value;

  @action
  clearPets() => listPets = [];

  @action
  setLoading(value) => isLoading = value;
}
