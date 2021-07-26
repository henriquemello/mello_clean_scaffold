import 'package:clean_mello/modules/core/modules/http/dio_http_adapter.dart';
import 'package:clean_mello/modules/posts/data/mapper/post_mapper.dart';
import 'package:clean_mello/modules/posts/data/repository/post_repository.dart';
import 'package:clean_mello/modules/posts/domain/usecases/posts_usecase.dart';
import 'package:clean_mello/modules/posts/presentation/post_controller.dart';
import 'package:clean_mello/modules/posts/presentation/post_presenter_impl.dart';
import 'package:clean_mello/modules/posts/presentation/stores/post_store.dart';
import 'package:clean_mello/modules/posts/remote/post_datasource_impl.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class PostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostController>(
      () => PostController(
        PostPresenterImple(
          GetPostsUsecaseImpl(
            PostRepositoryImpl(
              PostDatasourceImpl(
                DioHttpAdapter(
                  Dio(),
                ),
              ),
              PostMapper(),
            ),
          ),
        ),
        PostStore(),
      ),
    );
  }
}
