import 'package:clean_mello/modules/core/configure_dependencies.dart';
import 'package:clean_mello/modules/pets/presentation/pet_controller.dart';
import 'package:clean_mello/modules/pets/presentation/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PetsPage extends StatelessWidget {
  final PetController controller = getIt<PetController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Buscar usuários"),
                onPressed: onSearch,
              ),
              RaisedButton(
                child: Text("Limpar "),
                onPressed: onClear,
              ),
              Observer(
                builder: (context) {
                  return controller.petStore.isLoading
                      ? CircularProgressIndicator()
                      : Expanded(
                          child: ListView.builder(
                            itemCount: controller.petStore.listPets.length,
                            itemBuilder: (context, index) {
                              final pet = controller.petStore.listPets[index];
                              return Container(
                                padding: EdgeInsets.all(8),
                                height: 30,
                                child: CardPets(pet.nome),
                              );
                            },
                          ),
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSearch() {
    controller.getPets();
    return;
  }

  void onClear() {
    controller.clearPets();
    return;
  }
}
