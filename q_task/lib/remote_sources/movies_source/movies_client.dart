import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../common/models/genre/genre.dart';
import '../models/movie_dto/movie_dto.dart';
import '../models/genres_respnse/genres_response.dart';
import '../models/movies_response/movies_response.dart';

part 'movies_client.g.dart';

@RestApi()
abstract class MoviesClient {
  factory MoviesClient(Dio dio, {String baseUrl}) = _MoviesClient;

  @GET('/movie/popular')
  Future<MoviesResponse> getMovies(
    @Query('language') String language,
    @Query('page') int pageNumber,
  );

  @GET('/genre/movie/list')
  Future<GenresResponse> getGenres();
}
