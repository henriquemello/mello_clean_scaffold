import 'package:clean_mello/modules/posts/domain/entity/post_entity.dart';
import 'package:clean_mello/modules/posts/domain/usecases/posts_usecase.dart';
import 'package:clean_mello/modules/posts/presentation/post_presenter.dart';

class PostPresenterImple implements PostPresenter {
  final GetPostsUsecase getPostsUsecase;

  PostPresenterImple(this.getPostsUsecase);

  @override
  Future<List<PostEntity>> getPosts() {
    return getPostsUsecase();
  }
}
