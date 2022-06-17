part of 'favourites_bloc.dart';

@immutable
abstract class FavouritesState extends Equatable {
  const FavouritesState(this.favouriteMovies);

  final List<Movie> favouriteMovies;

  @override
  List<Object?> get props => [...favouriteMovies];
}

class FavouritesInitial extends FavouritesState {
  const FavouritesInitial() : super(const []);
}

class FavouritesLoaded extends FavouritesState {
  const FavouritesLoaded(super.favouriteMovies);
}

class FavouritesError extends FavouritesState {
  const FavouritesError() : super(const []);
}
