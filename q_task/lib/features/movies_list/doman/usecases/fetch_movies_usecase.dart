import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/errors/failures.dart';
import '../../../../common/models/movie_model/movie.dart';
import '../../../../common/network/network_info.dart';
import '../../../../common/utils/usecase.dart';
import '../repositories/movies_repository.dart';

@lazySingleton
class FetchMoviesUsecase extends UseCase<List<Movie>, FetchMoviesParams> {
  FetchMoviesUsecase(this._moviesRepository, this._networkInfo);
  final MoviesRepository _moviesRepository;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<Failure, List<Movie>>> call(FetchMoviesParams params) async {
    if (!await _networkInfo.isConnected) {
      return Left(NoConnectionFailure());
    }
    try {
      final movies =
          await _moviesRepository.getMovies(params.language, params.pageNumber);
      return Right(movies);
    } catch (error) {
      return Left(ServerFailure());
    }
  }
}

class FetchMoviesParams {
  FetchMoviesParams(this.pageNumber, this.language);

  final int pageNumber;
  final String language;
}
