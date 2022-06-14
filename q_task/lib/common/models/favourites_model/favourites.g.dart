// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Favourites _$$_FavouritesFromJson(Map<String, dynamic> json) =>
    _$_Favourites(
      favouriteMovieIds: (json['favouriteMovieIds'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_FavouritesToJson(_$_Favourites instance) =>
    <String, dynamic>{
      'favouriteMovieIds': instance.favouriteMovieIds,
    };
