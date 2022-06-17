import 'package:hive/hive.dart';

import '../../common/models/movie/movie.dart';

part 'movie_db.g.dart';

@HiveType(typeId: 0)
class MovieDb {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String posterPath;
  @HiveField(3)
  final double voteAverage;
  @HiveField(4)
  final String overview;
  @HiveField(5)
  final List<String> genres;
  MovieDb(this.id, this.title, this.posterPath, this.voteAverage, this.overview,
      this.genres);

  factory MovieDb.fromMovie(Movie movie) {
    return MovieDb(
      movie.id,
      movie.title,
      movie.posterPath,
      movie.voteAverage,
      movie.overview,
      movie.genres,
    );
  }
}
