import 'package:clean_mello/modules/posts/domain/entity/post_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../post_controller.dart';

class PostPage extends GetView<PostController> {
  PostPage(
    this.post,
  );

  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          width: double.infinity,
          child: Column(
            children: [
              Text(
                post.title.capitalizeFirst!,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                post.body.capitalizeFirst!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
