import 'package:clean_mello/modules/posts/domain/entity/post_entity.dart';
import 'package:get/get.dart';

class PostStore extends GetxController {
  final _listPosts = <PostEntity>[].obs;
  final _loading = false.obs;

  List<PostEntity> get listPosts => _listPosts;
  bool get loading => this._loading.value;

  set listPosts(List<PostEntity> value) => _listPosts.assignAll(value);
  set loading(bool value) => this._loading.value = value;
}
