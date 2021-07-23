import 'package:clean_mello/modules/pets/presentation/pet_controller.dart';
import 'package:clean_mello/modules/pets/presentation/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PetsPage extends StatelessWidget {
  final PetController controller;

  PetsPage({this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              RaisedButton(
                child: Text("Buscar pets.."),
                onPressed: onSearch,
              ),
              Observer(builder: (context) {
                return controller.petStore.listPets.length > 0 ?ListView.builder(
                  itemCount: controller.petStore.listPets.length,
                  itemBuilder: (context, index) {
                    final pet = controller.petStore.listPets[index];
                    return CardPets(pet.nome);
                  },
                ):Text("sem dados");
              }),
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
}
