import 'package:injectable/injectable.dart';

import '../hive_wrapper.dart';
import '../../common/models/movie/movie.dart';
import '../models/movie_db.dart';

abstract class FavouritesCacheDataSource {
  static const String favouritesCacheBoxName = 'favouriteMoviesCacheBox';

  Future<void> cacheFavouriteMovie(Movie movie);
  Future<void> removeFavouriteMovie(Movie movie);
  Future<List<Movie>> getCachedFavouriteMovies();
}

@LazySingleton(as: FavouritesCacheDataSource)
class MoviesCacheDataSourceImpl implements FavouritesCacheDataSource {
  MoviesCacheDataSourceImpl(this._hiveWrapper);
  final HiveWrapper _hiveWrapper;

  @override
  Future<void> cacheFavouriteMovie(Movie movie) async {
    final box = await _hiveWrapper
        .openBox(FavouritesCacheDataSource.favouritesCacheBoxName);
    box.put(movie.id, MovieDb.fromMovie(movie));
  }

  @override
  Future<void> removeFavouriteMovie(Movie movie) async {
    final box = await _hiveWrapper
        .openBox(FavouritesCacheDataSource.favouritesCacheBoxName);
    box.delete(movie.id);
  }

  @override
  Future<List<Movie>> getCachedFavouriteMovies() async {
    final box = await _hiveWrapper
        .openBox(FavouritesCacheDataSource.favouritesCacheBoxName);
    return box.values
        .toList()
        .cast<MovieDb>()
        .map((e) => Movie.fromMovieDb(e))
        .toList();
  }
}
