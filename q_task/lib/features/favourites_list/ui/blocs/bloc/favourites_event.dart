part of 'favourites_bloc.dart';

@immutable
abstract class FavouritesEvent implements Equatable {}

class FetchFavouritesEvent extends FavouritesEvent {
  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => false;
}

class ToggleFavouriteEvent extends FavouritesEvent {
  ToggleFavouriteEvent(this.movie);
  final Movie movie;

  @override
  List<Object?> get props => [movie];

  @override
  bool? get stringify => true;
}
