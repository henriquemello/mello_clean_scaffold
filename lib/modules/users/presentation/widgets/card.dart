import 'package:flutter/material.dart';

class CardUsers extends StatelessWidget {
  final String nome;

  const CardUsers(this.nome);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(nome ?? "sem nome"));
  }
}
