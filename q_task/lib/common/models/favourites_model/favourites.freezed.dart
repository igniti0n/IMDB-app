// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Favourites _$FavouritesFromJson(Map<String, dynamic> json) {
  return _Favourites.fromJson(json);
}

/// @nodoc
mixin _$Favourites {
  List<int> get favouriteMovieIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouritesCopyWith<Favourites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesCopyWith<$Res> {
  factory $FavouritesCopyWith(
          Favourites value, $Res Function(Favourites) then) =
      _$FavouritesCopyWithImpl<$Res>;
  $Res call({List<int> favouriteMovieIds});
}

/// @nodoc
class _$FavouritesCopyWithImpl<$Res> implements $FavouritesCopyWith<$Res> {
  _$FavouritesCopyWithImpl(this._value, this._then);

  final Favourites _value;
  // ignore: unused_field
  final $Res Function(Favourites) _then;

  @override
  $Res call({
    Object? favouriteMovieIds = freezed,
  }) {
    return _then(_value.copyWith(
      favouriteMovieIds: favouriteMovieIds == freezed
          ? _value.favouriteMovieIds
          : favouriteMovieIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_FavouritesCopyWith<$Res>
    implements $FavouritesCopyWith<$Res> {
  factory _$$_FavouritesCopyWith(
          _$_Favourites value, $Res Function(_$_Favourites) then) =
      __$$_FavouritesCopyWithImpl<$Res>;
  @override
  $Res call({List<int> favouriteMovieIds});
}

/// @nodoc
class __$$_FavouritesCopyWithImpl<$Res> extends _$FavouritesCopyWithImpl<$Res>
    implements _$$_FavouritesCopyWith<$Res> {
  __$$_FavouritesCopyWithImpl(
      _$_Favourites _value, $Res Function(_$_Favourites) _then)
      : super(_value, (v) => _then(v as _$_Favourites));

  @override
  _$_Favourites get _value => super._value as _$_Favourites;

  @override
  $Res call({
    Object? favouriteMovieIds = freezed,
  }) {
    return _then(_$_Favourites(
      favouriteMovieIds: favouriteMovieIds == freezed
          ? _value._favouriteMovieIds
          : favouriteMovieIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Favourites implements _Favourites {
  _$_Favourites({required final List<int> favouriteMovieIds})
      : _favouriteMovieIds = favouriteMovieIds;

  factory _$_Favourites.fromJson(Map<String, dynamic> json) =>
      _$$_FavouritesFromJson(json);

  final List<int> _favouriteMovieIds;
  @override
  List<int> get favouriteMovieIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouriteMovieIds);
  }

  @override
  String toString() {
    return 'Favourites(favouriteMovieIds: $favouriteMovieIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Favourites &&
            const DeepCollectionEquality()
                .equals(other._favouriteMovieIds, _favouriteMovieIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favouriteMovieIds));

  @JsonKey(ignore: true)
  @override
  _$$_FavouritesCopyWith<_$_Favourites> get copyWith =>
      __$$_FavouritesCopyWithImpl<_$_Favourites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavouritesToJson(this);
  }
}

abstract class _Favourites implements Favourites {
  factory _Favourites({required final List<int> favouriteMovieIds}) =
      _$_Favourites;

  factory _Favourites.fromJson(Map<String, dynamic> json) =
      _$_Favourites.fromJson;

  @override
  List<int> get favouriteMovieIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FavouritesCopyWith<_$_Favourites> get copyWith =>
      throw _privateConstructorUsedError;
}
