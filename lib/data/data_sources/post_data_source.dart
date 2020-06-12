import 'package:dio/dio.dart';
import 'package:flutterexercise/core/http_client/dio_factory.dart';
import 'package:flutterexercise/core/utilities/response_wrapper/response_wrapper.dart';
import 'package:flutterexercise/data/entities/post.dart';
import 'package:retrofit/retrofit.dart';


part 'post_data_source.g.dart';

abstract class PostDataSource {
  Future<ResponseWrapper<Post>> getPosts();
}

@RestApi()
abstract class HttpPostDataSourceImpl implements PostDataSource {

  static const base_url = 'https://jsonplaceholder.typicode.com';
  static const list = '/posts';

  factory HttpPostDataSourceImpl([Dio dio]) =>
      _HttpPostDataSourceImpl(dio ?? DioFactory().getDioInstance(), baseUrl: base_url);

  @override
  Future<ResponseWrapper<Post>> getPosts();
}
