import 'package:clean_mello/modules/posts/data/models/post_model.dart';
import 'package:clean_mello/modules/posts/domain/entity/post_entity.dart';

class PostMapper {
  PostEntity toEntity(PostModel model) {
    return PostEntity(
      title: model.title,
      body: model.body,
    );
  }
}
