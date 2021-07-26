import 'package:clean_mello/modules/core/modules/routes.dart';
import 'package:clean_mello/modules/posts/domain/entity/post_entity.dart';
import 'package:clean_mello/modules/posts/presentation/pages/post_page.dart';
import 'package:clean_mello/modules/posts/presentation/pages/posts_page.dart';
import 'package:clean_mello/modules/posts/presentation/post_binding.dart';
import 'package:get/get.dart';

class Pages {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.posts,
      page: () => PostsPage(),
      binding: PostBinding(),
    ),
    GetPage(
      name: Routes.post,
      page: () => PostPage(Get.arguments as PostEntity),
      binding: PostBinding(),
    ),
  ];
}
