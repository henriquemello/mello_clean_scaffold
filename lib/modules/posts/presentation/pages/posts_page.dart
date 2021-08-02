import 'package:clean_mello/modules/core/modules/routes.dart';
import 'package:clean_mello/modules/posts/presentation/post_controller.dart';
import 'package:clean_mello/modules/posts/presentation/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostsPage extends StatefulWidget {
  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  final PostController controller = Get.find<PostController>();

  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      controller.getPosts();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "appBarTittle".trParams(
            {
              "name": "Victor",
            },
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
        child: Text("btnChangeTheme".tr),
        onPressed: () => Theme.of(context).brightness == Brightness.dark
            ? Get.changeThemeMode(ThemeMode.light)
            : Get.changeThemeMode(ThemeMode.dark),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text("btnSearch".tr),
                    onPressed: controller.getPosts,
                  ),
                  ElevatedButton(
                    child: Text("btnChangeLocale".tr),
                    onPressed: controller.changeLocale,
                  ),
                ],
              ),
              Expanded(
                child: Center(
                  child: Obx(
                    () => controller.postStore.loading
                        ? CircularProgressIndicator()
                        : controller.postStore.listPosts.length > 0
                            ? ListView.builder(
                                itemCount:
                                    controller.postStore.listPosts.length,
                                itemBuilder: (context, index) {
                                  final post =
                                      controller.postStore.listPosts[index];
                                  return CardPosts(
                                    post.title.capitalizeFirst!,
                                    post.body.capitalizeFirst!,
                                    onTap: () => Get.toNamed(
                                      Routes.post,
                                      arguments: post,
                                    ),
                                  );
                                },
                              )
                            : Text("sem dados"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
