// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'genres_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenresResponse _$GenresResponseFromJson(Map<String, dynamic> json) {
  return _GenresResponse.fromJson(json);
}

/// @nodoc
mixin _$GenresResponse {
  List<Genre> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenresResponseCopyWith<GenresResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresResponseCopyWith<$Res> {
  factory $GenresResponseCopyWith(
          GenresResponse value, $Res Function(GenresResponse) then) =
      _$GenresResponseCopyWithImpl<$Res>;
  $Res call({List<Genre> genres});
}

/// @nodoc
class _$GenresResponseCopyWithImpl<$Res>
    implements $GenresResponseCopyWith<$Res> {
  _$GenresResponseCopyWithImpl(this._value, this._then);

  final GenresResponse _value;
  // ignore: unused_field
  final $Res Function(GenresResponse) _then;

  @override
  $Res call({
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
abstract class _$$_GenresResponseCopyWith<$Res>
    implements $GenresResponseCopyWith<$Res> {
  factory _$$_GenresResponseCopyWith(
          _$_GenresResponse value, $Res Function(_$_GenresResponse) then) =
      __$$_GenresResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Genre> genres});
}

/// @nodoc
class __$$_GenresResponseCopyWithImpl<$Res>
    extends _$GenresResponseCopyWithImpl<$Res>
    implements _$$_GenresResponseCopyWith<$Res> {
  __$$_GenresResponseCopyWithImpl(
      _$_GenresResponse _value, $Res Function(_$_GenresResponse) _then)
      : super(_value, (v) => _then(v as _$_GenresResponse));

  @override
  _$_GenresResponse get _value => super._value as _$_GenresResponse;

  @override
  $Res call({
    Object? genres = freezed,
  }) {
    return _then(_$_GenresResponse(
      genres: genres == freezed
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenresResponse implements _GenresResponse {
  _$_GenresResponse({required final List<Genre> genres}) : _genres = genres;

  factory _$_GenresResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GenresResponseFromJson(json);

  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'GenresResponse(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenresResponse &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  _$$_GenresResponseCopyWith<_$_GenresResponse> get copyWith =>
      __$$_GenresResponseCopyWithImpl<_$_GenresResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenresResponseToJson(this);
  }
}

abstract class _GenresResponse implements GenresResponse {
  factory _GenresResponse({required final List<Genre> genres}) =
      _$_GenresResponse;

  factory _GenresResponse.fromJson(Map<String, dynamic> json) =
      _$_GenresResponse.fromJson;

  @override
  List<Genre> get genres => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GenresResponseCopyWith<_$_GenresResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
