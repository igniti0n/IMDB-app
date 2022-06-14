// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'poste_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'poste_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'vote_average') double voteAverage,
      String overview,
      @JsonKey(name: 'genre_ids') List<int> genreIds});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? voteAverage = freezed,
    Object? overview = freezed,
    Object? genreIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: genreIds == freezed
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$_MovieCopyWith(_$_Movie value, $Res Function(_$_Movie) then) =
      __$$_MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'poste_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'vote_average') double voteAverage,
      String overview,
      @JsonKey(name: 'genre_ids') List<int> genreIds});
}

/// @nodoc
class __$$_MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$$_MovieCopyWith<$Res> {
  __$$_MovieCopyWithImpl(_$_Movie _value, $Res Function(_$_Movie) _then)
      : super(_value, (v) => _then(v as _$_Movie));

  @override
  _$_Movie get _value => super._value as _$_Movie;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? voteAverage = freezed,
    Object? overview = freezed,
    Object? genreIds = freezed,
  }) {
    return _then(_$_Movie(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: genreIds == freezed
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie implements _Movie {
  _$_Movie(
      {required this.id,
      required this.title,
      @JsonKey(name: 'poste_path') required this.posterPath,
      @JsonKey(name: 'backdrop_path') required this.backdropPath,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      required this.overview,
      @JsonKey(name: 'genre_ids') required final List<int> genreIds})
      : _genreIds = genreIds;

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'poste_path')
  final String posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  final String overview;
  final List<int> _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage, overview: $overview, genreIds: $genreIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Movie &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(_genreIds));

  @JsonKey(ignore: true)
  @override
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      __$$_MovieCopyWithImpl<_$_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(this);
  }
}

abstract class _Movie implements Movie {
  factory _Movie(
          {required final int id,
          required final String title,
          @JsonKey(name: 'poste_path') required final String posterPath,
          @JsonKey(name: 'backdrop_path') required final String backdropPath,
          @JsonKey(name: 'vote_average') required final double voteAverage,
          required final String overview,
          @JsonKey(name: 'genre_ids') required final List<int> genreIds}) =
      _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'poste_path')
  String get posterPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      throw _privateConstructorUsedError;
}
