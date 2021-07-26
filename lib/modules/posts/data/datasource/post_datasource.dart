import 'package:clean_mello/modules/posts/data/models/post_model.dart';

abstract class PostDatasource {
  Future<List<PostModel>> getPostsFromRemote();
}
