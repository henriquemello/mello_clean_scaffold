import 'package:clean_mello/modules/core/modules/http/http_error.dart';
import 'package:clean_mello/modules/posts/presentation/post_presenter.dart';
import 'package:clean_mello/modules/posts/presentation/stores/post_store.dart';

class PostController {
  final PostPresenter postPresenter;
  final PostStore postStore;

  PostController(this.postPresenter, this.postStore);

  Future getPosts() async {
    postStore.loading = true;
    try {
      final request = await postPresenter.getPosts();
      postStore.listPosts = request;
    } on HttpError catch (e) {
      print('error $e');
    } finally {
      postStore.loading = false;
    }
  }
}
