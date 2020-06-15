import 'package:flutterexercise/core/utilities/catch_and_map_exception.dart';
import 'package:flutterexercise/data/data_sources/post_data_source.dart';
import 'package:flutterexercise/data/entities/post.dart';
import 'package:flutterexercise/data/repositories/posts_repository.dart';

class PostsRepositoryImplementation implements PostsRepository {
  PostDataSource dataSource;

  PostsRepositoryImplementation([PostDataSource postDataSource]) {
    this.dataSource = postDataSource;
  }

  @override
  Future<List<Post>> getPosts() {
    catchException(() => dataSource.getPosts());
  }
}
