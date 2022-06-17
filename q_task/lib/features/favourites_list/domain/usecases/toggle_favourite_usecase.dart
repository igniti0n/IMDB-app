import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/errors/exception_to_failure_mapper.dart';
import '../../../../common/errors/failures.dart';
import '../../../../common/utils/dev_utils.dart';
import '../../../../common/utils/usecase.dart';
import '../../../../common/models/movie/movie.dart';
import '../repositories/favourites_repository.dart';

@lazySingleton
class ToggleFavouriteUsecase
    extends UseCase<List<Movie>, ToggleFavouriteParams> {
  ToggleFavouriteUsecase(this._favouritesRepository);
  final FavouritesRepository _favouritesRepository;

  @override
  Future<Either<Failure, List<Movie>>> call(
      ToggleFavouriteParams params) async {
    try {
      final newFavourites = await _favouritesRepository.toggleFavourite(
          params.movie, params.isFavuorite);
      return Right(newFavourites);
    } catch (exception) {
      safeLog('Exception: ' + exception.toString());
      return Left(ExceptionToFailureMapper.mapExceptionToFailure(
          exception.runtimeType));
    }
  }
}

class ToggleFavouriteParams {
  ToggleFavouriteParams(this.movie, this.isFavuorite);
  final Movie movie;
  final bool isFavuorite;
}
