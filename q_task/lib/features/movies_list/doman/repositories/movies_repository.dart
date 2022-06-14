import 'package:dartz/dartz.dart';

import '../../../../common/errors/failures.dart';
import '../../../../common/models/genre_model/genre.dart';
import '../../../../common/models/movie_model/movie.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getMovies(String language, int page);
  Future<List<Genre>> getGenres();
}
