// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PetStore on _PetStore, Store {
  final _$listPetsAtom = Atom(name: '_PetStore.listPets');

  @override
  List<PetEntity> get listPets {
    _$listPetsAtom.reportRead();
    return super.listPets;
  }

  @override
  set listPets(List<PetEntity> value) {
    _$listPetsAtom.reportWrite(value, super.listPets, () {
      super.listPets = value;
    });
  }

  final _$_PetStoreActionController = ActionController(name: '_PetStore');

  @override
  dynamic setListPets(dynamic value) {
    final _$actionInfo =
        _$_PetStoreActionController.startAction(name: '_PetStore.setListPets');
    try {
      return super.setListPets(value);
    } finally {
      _$_PetStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listPets: ${listPets}
    ''';
  }
}
