import 'package:clean_mello/modules/core/configure_dependencies.dart';
import 'package:clean_mello/modules/users/presentation/user_controller.dart';
import 'package:clean_mello/modules/users/presentation/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UsersPage extends StatelessWidget {
  final UserController controller = getIt<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                key: Key('search'),
                child: Text("Buscar usuários"),
                onPressed: onSearch,
              ),
              ElevatedButton(
                key: Key('clean'),
                child: Text("Limpar "),
                onPressed: onClear,
              ),
              Expanded(
                child: Observer(
                  builder: (context) {
                    return controller.userStore.isLoading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : ListView.builder(
                            key: Key('list'),
                            itemCount: controller.userStore.listUsers.length,
                            itemBuilder: (context, index) {
                              final user =
                                  controller.userStore.listUsers[index];
                              return Container(
                                padding: EdgeInsets.all(8),
                                height: 30,
                                child: CardUsers(user.nome),
                              );
                            },
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSearch() => controller.getUsers();

  void onClear() => controller.clearUsers();
}
