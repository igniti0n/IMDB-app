// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as int,
      title: json['title'] as String,
      posterPath: json['poste_path'] as String,
      backdropPath: json['backdrop_path'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      overview: json['overview'] as String,
      genreIds:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poste_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
      'genre_ids': instance.genreIds,
    };
