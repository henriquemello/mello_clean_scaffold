import 'package:clean_mello/modules/users/domain/entity/user_entity.dart';
import 'package:flutter/material.dart';

class CardUsers extends StatelessWidget {
  final UserEntity userEntity;

  const CardUsers(this.userEntity);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListTile(
        title: Text(userEntity.nome),
        subtitle: Text(userEntity.email),
      )
    );
  }
}
