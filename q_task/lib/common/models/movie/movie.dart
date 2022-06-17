import 'package:freezed_annotation/freezed_annotation.dart';

import '../genre/genre.dart';
import '../../../remote_sources/models/movie_dto/movie_dto.dart';
import '../../../local_sources/models/movie_db.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  factory Movie({
    required final int id,
    required final String title,
    required final String posterPath,
    required final double voteAverage,
    required final String overview,
    required final List<String> genres,
  }) = _Movie;
  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  factory Movie.fromMovieResponse(MovieDto movie, List<Genre> genres) {
    return Movie(
      id: movie.id,
      title: movie.title,
      posterPath: movie.posterPath,
      voteAverage: movie.voteAverage,
      overview: movie.overview,
      genres: genres
          .where((genre) => movie.genreIds.contains(genre.id))
          .map((e) => e.name)
          .toList(),
    );
  }

  factory Movie.fromMovieDb(MovieDb movie) {
    return Movie(
        id: movie.id,
        title: movie.title,
        posterPath: movie.posterPath,
        voteAverage: movie.voteAverage,
        overview: movie.overview,
        genres: movie.genres);
  }

  factory Movie.empty() {
    return Movie(
      id: 0,
      title: '',
      posterPath: '',
      voteAverage: 0,
      overview: '',
      genres: [],
    );
  }
}
