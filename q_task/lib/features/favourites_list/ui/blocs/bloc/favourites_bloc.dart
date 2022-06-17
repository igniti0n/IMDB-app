import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/subjects.dart';

import '../../../../../common/utils/dev_utils.dart';
import '../../../../../common/utils/usecase.dart';
import '../../../../../common/models/movie/movie.dart';
import '../../../domain/usecases/fetch_favourites_usecase.dart';
import '../../../domain/usecases/toggle_favourite_usecase.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';

@injectable
class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  FavouritesBloc(this._toggleFavouriteUsecase, this._fetchFavouritesUsecase)
      : super(const FavouritesInitial()) {
    on<ToggleFavouriteEvent>(
        (event, emit) => handleToggleFavouriteMovie(emit, event.movie));
    on<FetchFavouritesEvent>((event, emit) => handleFetchFavouriteMovies(emit));
    add(FetchFavouritesEvent());
  }
  final ToggleFavouriteUsecase _toggleFavouriteUsecase;
  final FetchFavouritesUsecase _fetchFavouritesUsecase;
  final PublishSubject<int> _favouriteMovieIndexRemoved = PublishSubject<int>();

  Stream<int> get favouriteMovieIndexRemoved =>
      _favouriteMovieIndexRemoved.stream;

  Future<void> handleFetchFavouriteMovies(Emitter<FavouritesState> emit) async {
    final failureOrFavrites = await _fetchFavouritesUsecase.call(NoParams());
    failureOrFavrites.fold(
      (failure) => emit(const FavouritesError()),
      (favourites) => emit(FavouritesLoaded(favourites)),
    );
  }

  Future<void> handleToggleFavouriteMovie(
      Emitter<FavouritesState> emit, Movie movie) async {
    final favouriteMovieIndex =
        state.favouriteMovies.indexWhere((element) => element.id == movie.id);
    final isAllreadyFavourite = favouriteMovieIndex != -1;
    final newFavouritesOrFailure = await _toggleFavouriteUsecase
        .call(ToggleFavouriteParams(movie, isAllreadyFavourite));
    newFavouritesOrFailure.fold(
      (failure) => emit(const FavouritesError()),
      (favourites) {
        if (isAllreadyFavourite) {
          _favouriteMovieIndexRemoved.add(favouriteMovieIndex);
        }
        emit(FavouritesLoaded(favourites));
      },
    );
  }
}
