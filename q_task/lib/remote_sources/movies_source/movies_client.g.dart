// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _MoviesClient implements MoviesClient {
  _MoviesClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Movie>> getMovies(language, thingName) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'page': thingName
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<Movie>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/movie/popular',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Movie.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<Genre>> getGenres() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<Genre>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/genre/movie/list',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Genre.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
