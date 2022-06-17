// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviesResponse _$MoviesResponseFromJson(Map<String, dynamic> json) {
  return _MoviesResponse.fromJson(json);
}

/// @nodoc
mixin _$MoviesResponse {
  int get page => throw _privateConstructorUsedError;
  List<MovieDto> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesResponseCopyWith<MoviesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResponseCopyWith<$Res> {
  factory $MoviesResponseCopyWith(
          MoviesResponse value, $Res Function(MoviesResponse) then) =
      _$MoviesResponseCopyWithImpl<$Res>;
  $Res call({int page, List<MovieDto> results});
}

/// @nodoc
class _$MoviesResponseCopyWithImpl<$Res>
    implements $MoviesResponseCopyWith<$Res> {
  _$MoviesResponseCopyWithImpl(this._value, this._then);

  final MoviesResponse _value;
  // ignore: unused_field
  final $Res Function(MoviesResponse) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_MoviesResponseCopyWith<$Res>
    implements $MoviesResponseCopyWith<$Res> {
  factory _$$_MoviesResponseCopyWith(
          _$_MoviesResponse value, $Res Function(_$_MoviesResponse) then) =
      __$$_MoviesResponseCopyWithImpl<$Res>;
  @override
  $Res call({int page, List<MovieDto> results});
}

/// @nodoc
class __$$_MoviesResponseCopyWithImpl<$Res>
    extends _$MoviesResponseCopyWithImpl<$Res>
    implements _$$_MoviesResponseCopyWith<$Res> {
  __$$_MoviesResponseCopyWithImpl(
      _$_MoviesResponse _value, $Res Function(_$_MoviesResponse) _then)
      : super(_value, (v) => _then(v as _$_MoviesResponse));

  @override
  _$_MoviesResponse get _value => super._value as _$_MoviesResponse;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_MoviesResponse(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoviesResponse implements _MoviesResponse {
  _$_MoviesResponse({required this.page, required final List<MovieDto> results})
      : _results = results;

  factory _$_MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MoviesResponseFromJson(json);

  @override
  final int page;
  final List<MovieDto> _results;
  @override
  List<MovieDto> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MoviesResponse(page: $page, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoviesResponse &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_MoviesResponseCopyWith<_$_MoviesResponse> get copyWith =>
      __$$_MoviesResponseCopyWithImpl<_$_MoviesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoviesResponseToJson(this);
  }
}

abstract class _MoviesResponse implements MoviesResponse {
  factory _MoviesResponse(
      {required final int page,
      required final List<MovieDto> results}) = _$_MoviesResponse;

  factory _MoviesResponse.fromJson(Map<String, dynamic> json) =
      _$_MoviesResponse.fromJson;

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  List<MovieDto> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MoviesResponseCopyWith<_$_MoviesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
