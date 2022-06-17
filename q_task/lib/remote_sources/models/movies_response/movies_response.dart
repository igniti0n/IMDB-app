import 'package:freezed_annotation/freezed_annotation.dart';

import '../movie_dto/movie_dto.dart';

part 'movies_response.freezed.dart';
part 'movies_response.g.dart';

@freezed
abstract class MoviesResponse with _$MoviesResponse {
  factory MoviesResponse({
    required int page,
    required List<MovieDto> results,
  }) = _MoviesResponse;
  factory MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseFromJson(json);
}
