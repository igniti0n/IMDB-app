import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../common/models/genre_model/genre.dart';
import '../../common/models/movie_model/movie.dart';

part 'movies_client.g.dart';

@RestApi()
abstract class MoviesClient {
  factory MoviesClient(Dio dio, {String baseUrl}) = _MoviesClient;

  @GET('/movie/popular')
  Future<List<Movie>> getMovies(
    @Query('language') String language,
    @Query('page') int thingName,
  );

  @GET('/genre/movie/list')
  Future<List<Genre>> getGenres();
}
