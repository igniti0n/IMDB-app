import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/errors/exception_to_failure_mapper.dart';
import '../../../../common/errors/failures.dart';
import '../../../../common/utils/usecase.dart';
import '../../../../common/models/movie/movie.dart';
import '../repositories/movies_repository.dart';

@lazySingleton
class FetchMoviesUsecase extends UseCase<List<Movie>, FetchMoviesParams> {
  FetchMoviesUsecase(this._moviesRepository);
  final MoviesRepository _moviesRepository;

  @override
  Future<Either<Failure, List<Movie>>> call(FetchMoviesParams params) async {
    try {
      final movies =
          await _moviesRepository.getMovies(params.language, params.pageNumber);
      return Right(movies);
    } catch (exception) {
      return Left(ExceptionToFailureMapper.mapExceptionToFailure(exception));
    }
  }
}

class FetchMoviesParams {
  FetchMoviesParams(this.pageNumber, this.language);

  final int pageNumber;
  final String language;
}
