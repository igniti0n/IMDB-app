import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../common/errors/failures.dart';
import '../../../../../common/models/movie/movie.dart';
import '../../../../../common/network/network_info.dart';
import '../../../doman/usecases/fetch_movies_usecase.dart';
import 'package:rxdart/rxdart.dart';

part 'popular_movies_event.dart';
part 'popular_movies_state.dart';

@injectable
class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  PopularMoviesBloc(this._networkInfo, {required this.fetchMoviesUsecase})
      : super(const PopularMoviesInitial()) {
    on<FetchPopularMoviesEvent>(
        (event, emit) => handleFetchPopularMovies(emit, event.page));
    _streamInternetConnectionState();
  }
  final FetchMoviesUsecase fetchMoviesUsecase;
  final NetworkInfo _networkInfo;
  late final Stream<bool> internetConnectionState;
  int _pageNumber = 1;

  void _streamInternetConnectionState() {
    internetConnectionState = _networkInfo.resultStream
        .map((result) => result != ConnectivityResult.none)
        .debounceTime(const Duration(milliseconds: 60));
  }

  Future<void> handleFetchPopularMovies(
      Emitter<PopularMoviesState> emit, int pageKey) async {
    emit(const PopularMoviesLoading());
    if (pageKey == 0) {
      _pageNumber = 1;
    }
    final resultOrFailure =
        await fetchMoviesUsecase(FetchMoviesParams(_pageNumber, 'en'));
    resultOrFailure.fold(
      (failure) => emit(PopularMoviesError(failure)),
      (movies) {
        _pageNumber++;
        emit(PopularMoviesLoaded(movies));
      },
    );
  }
}
