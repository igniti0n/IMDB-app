import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/models/genre_model/genre.dart';
import '../../../common/models/movie_model/movie.dart';

part 'movie_ui.freezed.dart';
part 'movie_ui.g.dart';

@freezed
abstract class MovieUi with _$MovieUi {
  factory MovieUi({
    required final int id,
    required final String title,
    required final String posterPath,
    required final String backdropPath,
    required final double voteAverage,
    required final String overview,
    required final List<String> genres,
  }) = _MovieUi;
  factory MovieUi.fromJson(Map<String, dynamic> json) =>
      _$MovieUiFromJson(json);

  factory MovieUi.fromMovie(Movie movie, List<Genre> genres) {
    return MovieUi(
      id: movie.id,
      title: movie.title,
      posterPath: movie.posterPath,
      backdropPath: movie.backdropPath,
      voteAverage: movie.voteAverage,
      overview: movie.overview,
      genres: genres
          .where((genre) => movie.genreIds.contains(genre.id))
          .map((e) => e.name)
          .toList(),
    );
  }
}
