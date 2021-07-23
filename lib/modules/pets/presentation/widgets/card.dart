import 'package:flutter/material.dart';

class CardPets extends StatelessWidget {
  final String nome;

  const CardPets(this.nome);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(nome ?? "sem nome"));
  }
}
