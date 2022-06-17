import 'package:injectable/injectable.dart';

import '../../../../common/models/movie/movie.dart';
import '../../../../local_sources/favourites_source/favourites_cache_service.dart';

abstract class FavouritesRepository {
  Future<List<Movie>> getFavourites();
  Future<List<Movie>> toggleFavourite(Movie movie, bool isFavourite);
}

@LazySingleton(as: FavouritesRepository)
class FavouritesRepositoryImpl extends FavouritesRepository {
  FavouritesRepositoryImpl(
    this._favouritesCacheDataSource,
  );
  final FavouritesCacheDataSource _favouritesCacheDataSource;

  @override
  Future<List<Movie>> getFavourites() async {
    return _favouritesCacheDataSource.getCachedFavouriteMovies();
  }

  @override
  Future<List<Movie>> toggleFavourite(Movie movie, bool isFavourite) async {
    if (isFavourite) {
      await _favouritesCacheDataSource.removeFavouriteMovie(movie);
    } else {
      await _favouritesCacheDataSource.cacheFavouriteMovie(movie);
    }
    return _favouritesCacheDataSource.getCachedFavouriteMovies();
  }
}
