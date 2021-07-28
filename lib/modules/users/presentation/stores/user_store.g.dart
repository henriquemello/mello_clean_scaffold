// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  final _$listUsersAtom = Atom(name: '_UserStore.listUsers');

  @override
  List<UserEntity> get listUsers {
    _$listUsersAtom.reportRead();
    return super.listUsers;
  }

  @override
  set listUsers(List<UserEntity> value) {
    _$listUsersAtom.reportWrite(value, super.listUsers, () {
      super.listUsers = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_UserStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$_UserStoreActionController = ActionController(name: '_UserStore');

  @override
  dynamic setListUsers(dynamic value) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.setListUsers');
    try {
      return super.setListUsers(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clearUsers() {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.clearUsers');
    try {
      return super.clearUsers();
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLoading(dynamic value) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listUsers: ${listUsers},
isLoading: ${isLoading}
    ''';
  }
}
