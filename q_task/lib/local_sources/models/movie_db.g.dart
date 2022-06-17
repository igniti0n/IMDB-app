// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieDbAdapter extends TypeAdapter<MovieDb> {
  @override
  final int typeId = 0;

  @override
  MovieDb read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieDb(
      fields[0] as int,
      fields[1] as String,
      fields[2] as String,
      fields[3] as double,
      fields[4] as String,
      (fields[5] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, MovieDb obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.posterPath)
      ..writeByte(3)
      ..write(obj.voteAverage)
      ..writeByte(4)
      ..write(obj.overview)
      ..writeByte(5)
      ..write(obj.genres);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDbAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
