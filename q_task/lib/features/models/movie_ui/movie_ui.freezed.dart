// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_ui.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieUi _$MovieUiFromJson(Map<String, dynamic> json) {
  return _MovieUi.fromJson(json);
}

/// @nodoc
mixin _$MovieUi {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  String get backdropPath => throw _privateConstructorUsedError;
  double get voteAverage => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieUiCopyWith<MovieUi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieUiCopyWith<$Res> {
  factory $MovieUiCopyWith(MovieUi value, $Res Function(MovieUi) then) =
      _$MovieUiCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String posterPath,
      String backdropPath,
      double voteAverage,
      String overview,
      List<String> genres});
}

/// @nodoc
class _$MovieUiCopyWithImpl<$Res> implements $MovieUiCopyWith<$Res> {
  _$MovieUiCopyWithImpl(this._value, this._then);

  final MovieUi _value;
  // ignore: unused_field
  final $Res Function(MovieUi) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? voteAverage = freezed,
    Object? overview = freezed,
    Object? genres = freezed,
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
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieUiCopyWith<$Res> implements $MovieUiCopyWith<$Res> {
  factory _$$_MovieUiCopyWith(
          _$_MovieUi value, $Res Function(_$_MovieUi) then) =
      __$$_MovieUiCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String posterPath,
      String backdropPath,
      double voteAverage,
      String overview,
      List<String> genres});
}

/// @nodoc
class __$$_MovieUiCopyWithImpl<$Res> extends _$MovieUiCopyWithImpl<$Res>
    implements _$$_MovieUiCopyWith<$Res> {
  __$$_MovieUiCopyWithImpl(_$_MovieUi _value, $Res Function(_$_MovieUi) _then)
      : super(_value, (v) => _then(v as _$_MovieUi));

  @override
  _$_MovieUi get _value => super._value as _$_MovieUi;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? voteAverage = freezed,
    Object? overview = freezed,
    Object? genres = freezed,
  }) {
    return _then(_$_MovieUi(
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
      genres: genres == freezed
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieUi implements _MovieUi {
  _$_MovieUi(
      {required this.id,
      required this.title,
      required this.posterPath,
      required this.backdropPath,
      required this.voteAverage,
      required this.overview,
      required final List<String> genres})
      : _genres = genres;

  factory _$_MovieUi.fromJson(Map<String, dynamic> json) =>
      _$$_MovieUiFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String posterPath;
  @override
  final String backdropPath;
  @override
  final double voteAverage;
  @override
  final String overview;
  final List<String> _genres;
  @override
  List<String> get genres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'MovieUi(id: $id, title: $title, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage, overview: $overview, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieUi &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
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
      const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  _$$_MovieUiCopyWith<_$_MovieUi> get copyWith =>
      __$$_MovieUiCopyWithImpl<_$_MovieUi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieUiToJson(this);
  }
}

abstract class _MovieUi implements MovieUi {
  factory _MovieUi(
      {required final int id,
      required final String title,
      required final String posterPath,
      required final String backdropPath,
      required final double voteAverage,
      required final String overview,
      required final List<String> genres}) = _$_MovieUi;

  factory _MovieUi.fromJson(Map<String, dynamic> json) = _$_MovieUi.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get posterPath => throw _privateConstructorUsedError;
  @override
  String get backdropPath => throw _privateConstructorUsedError;
  @override
  double get voteAverage => throw _privateConstructorUsedError;
  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  List<String> get genres => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieUiCopyWith<_$_MovieUi> get copyWith =>
      throw _privateConstructorUsedError;
}
