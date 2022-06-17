import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/errors/exception_to_failure_mapper.dart';
import '../../../../common/errors/failures.dart';
import '../../../../common/utils/dev_utils.dart';
import '../../../../common/utils/usecase.dart';
import '../../../../common/models/movie/movie.dart';
import '../repositories/favourites_repository.dart';

@lazySingleton
class FetchFavouritesUsecase extends UseCase<List<Movie>, NoParams> {
  FetchFavouritesUsecase(this._favouritesRepository);
  final FavouritesRepository _favouritesRepository;

  @override
  Future<Either<Failure, List<Movie>>> call(NoParams params) async {
    try {
      final favourites = await _favouritesRepository.getFavourites();
      safeLog('FETCHED FAVOURITES: $favourites');
      return Right(favourites);
    } catch (exception) {
      safeLog('Exception: ' + exception.toString());
      return Left(ExceptionToFailureMapper.mapExceptionToFailure(
          exception.runtimeType));
    }
  }
}
