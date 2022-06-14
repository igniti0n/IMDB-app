import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourites.freezed.dart';
part 'favourites.g.dart';

@freezed
abstract class Favourites with _$Favourites {
  factory Favourites({
    required final List<int> favouriteMovieIds,
  }) = _Favourites;
  factory Favourites.fromJson(Map<String, dynamic> json) =>
      _$FavouritesFromJson(json);
}
