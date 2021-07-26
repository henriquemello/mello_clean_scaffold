import 'package:clean_mello/modules/posts/data/datasource/post_datasource.dart';
import 'package:clean_mello/modules/posts/data/mapper/post_mapper.dart';
import 'package:clean_mello/modules/posts/domain/entity/post_entity.dart';
import 'package:clean_mello/modules/posts/domain/repository/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostDatasource petDatasource;
  final PostMapper petMapper;

  PostRepositoryImpl(this.petDatasource, this.petMapper);

  @override
  Future<List<PostEntity>> getPosts() async {
    final listPostModels = await petDatasource.getPostsFromRemote();

    final listPostEntities =
        listPostModels.map((e) => petMapper.toEntity(e)).toList();
    return listPostEntities;
  }
}
