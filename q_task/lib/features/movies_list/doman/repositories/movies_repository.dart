import 'package:injectable/injectable.dart';

import '../../../../common/errors/exceptions.dart';
import '../../../../common/models/movie/movie.dart';
import '../../../../common/network/network_info.dart';
import '../../../../local_sources/movies_source/movies_cache_service.dart';
import '../../../../remote_sources/movies_source/movies_api_service.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getMovies(String language, int page);
}

@LazySingleton(as: MoviesRepository)
class MoviesRepositoryImpl extends MoviesRepository {
  MoviesRepositoryImpl(
    this._moviesApiService,
    this._moviesCacheDataSource,
    this._networkInfo,
  );
  final MoviesApiService _moviesApiService;
  final MoviesCacheDataSource _moviesCacheDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<List<Movie>> getMovies(String language, int page) async {
    final moviesFromCache = await _moviesCacheDataSource.getCachedMovies(page);
    if (moviesFromCache.isNotEmpty) {
      return moviesFromCache;
    } else {
      return fetchMoviesFromInternet(language, page);
    }
  }

  Future<List<Movie>> fetchMoviesFromInternet(String language, int page) async {
    if (!await _networkInfo.isConnected) {
      throw NoInternetException();
    }
    final genresResponse = await _moviesApiService.moviesClient.getGenres();
    final moviesResponse =
        await _moviesApiService.moviesClient.getMovies(language, page);
    final movies = moviesResponse.results
        .map((movie) => Movie.fromMovieResponse(movie, genresResponse.genres))
        .toList();
    await _moviesCacheDataSource.cacheMovies(movies, page);
    return movies;
  }
}
