import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
abstract class Movie with _$Movie {
  factory Movie({
    required final int id,
    required final String title,
    @JsonKey(name: 'poste_path') required final String posterPath,
    @JsonKey(name: 'backdrop_path') required final String backdropPath,
    @JsonKey(name: 'vote_average') required final double voteAverage,
    required final String overview,
    @JsonKey(name: 'genre_ids') required final List<int> genreIds,
  }) = _Movie;
  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
