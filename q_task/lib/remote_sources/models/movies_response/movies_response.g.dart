// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoviesResponse _$$_MoviesResponseFromJson(Map<String, dynamic> json) =>
    _$_MoviesResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MoviesResponseToJson(_$_MoviesResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
