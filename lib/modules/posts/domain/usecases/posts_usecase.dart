import 'package:clean_mello/modules/posts/domain/entity/post_entity.dart';
import 'package:clean_mello/modules/posts/domain/repository/post_repository.dart';

mixin GetPostsUsecase {
  Future<List<PostEntity>> call();
}

class GetPostsUsecaseImpl implements GetPostsUsecase {
  final PostRepository petRepository;

  GetPostsUsecaseImpl(this.petRepository);

  Future<List<PostEntity>> call() async {
    return await petRepository.getPosts();
  }
}
