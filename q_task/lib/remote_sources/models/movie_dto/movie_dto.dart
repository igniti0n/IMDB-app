import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_dto.freezed.dart';
part 'movie_dto.g.dart';

@freezed
class MovieDto with _$MovieDto {
  factory MovieDto({
    required final int id,
    required final String title,
    @JsonKey(name: 'poster_path') required final String posterPath,
    @JsonKey(name: 'vote_average') required final double voteAverage,
    required final String overview,
    @JsonKey(name: 'genre_ids') required final List<int> genreIds,
  }) = _Movie;

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);
}
