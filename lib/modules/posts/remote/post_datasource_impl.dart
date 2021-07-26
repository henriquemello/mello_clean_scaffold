import 'package:clean_mello/modules/core/modules/http/http_adapter.dart';
import 'package:clean_mello/modules/core/modules/http/http_error.dart';
import 'package:clean_mello/modules/posts/data/datasource/post_datasource.dart';
import 'package:clean_mello/modules/posts/data/models/post_model.dart';

class PostDatasourceImpl implements PostDatasource {
  final HttpAdapter httpAdapter;

  PostDatasourceImpl(this.httpAdapter);

  @override
  Future<List<PostModel>> getPostsFromRemote() async {
    try {
      final response =
          await httpAdapter.get('https://jsonplaceholder.typicode.com/posts');

      return PostModel.fromJsonList(response.data);
    } on HttpError catch (e) {
      throw e.data;
    } catch (e) {
      rethrow;
    }
  }
}
