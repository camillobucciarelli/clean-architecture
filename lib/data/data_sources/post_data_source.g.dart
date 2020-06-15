// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _HttpPostDataSourceImpl implements HttpPostDataSourceImpl {
  _HttpPostDataSourceImpl(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  getPosts() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request('/posts',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ResponseWrapper<Post>.fromJson(_result.data);
    return value;
  }
}
