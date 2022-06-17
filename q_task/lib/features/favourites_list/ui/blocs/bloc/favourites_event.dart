part of 'favourites_bloc.dart';

@immutable
abstract class FavouritesEvent {}

class FetchFavouritesEvent extends FavouritesEvent {}

class ToggleFavouriteEvent extends FavouritesEvent {
  ToggleFavouriteEvent(this.movie);
  final Movie movie;
}
