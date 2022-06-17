import 'package:injectable/injectable.dart';

import '../hive_wrapper.dart';
import '../../common/models/movie/movie.dart';
import '../models/movie_db.dart';

abstract class MoviesCacheDataSource {
  static const String moviesCacheBoxName = 'moviesBox';

  Future<void> cacheMovies(List<Movie> things, int pageNumber);
  Future<List<Movie>> getCachedMovies(int pageNumber);
}

@LazySingleton(as: MoviesCacheDataSource)
class MoviesCacheDataSourceImpl implements MoviesCacheDataSource {
  MoviesCacheDataSourceImpl(this._hiveWrapper);
  final HiveWrapper _hiveWrapper;

  @override
  Future<void> cacheMovies(List<Movie> movies, int pageNumber) async {
    final box =
        await _hiveWrapper.openBox(MoviesCacheDataSource.moviesCacheBoxName);
    box.put(pageNumber, movies.map((e) => MovieDb.fromMovie(e)).toList());
  }

  @override
  Future<List<Movie>> getCachedMovies(int pageNumber) async {
    final box =
        await _hiveWrapper.openBox(MoviesCacheDataSource.moviesCacheBoxName);
    if (!box.containsKey(pageNumber)) {
      return [];
    }
    final encodedMovies =
        (box.get(pageNumber) as List<dynamic>).cast<MovieDb>();
    return encodedMovies.map((movie) => Movie.fromMovieDb(movie)).toList();
  }
}
