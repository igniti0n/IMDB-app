// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_ui.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieUi _$$_MovieUiFromJson(Map<String, dynamic> json) => _$_MovieUi(
      id: json['id'] as int,
      title: json['title'] as String,
      posterPath: json['posterPath'] as String,
      backdropPath: json['backdropPath'] as String,
      voteAverage: (json['voteAverage'] as num).toDouble(),
      overview: json['overview'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_MovieUiToJson(_$_MovieUi instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'posterPath': instance.posterPath,
      'backdropPath': instance.backdropPath,
      'voteAverage': instance.voteAverage,
      'overview': instance.overview,
      'genres': instance.genres,
    };
