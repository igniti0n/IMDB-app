part of 'popular_movies_bloc.dart';

@immutable
abstract class PopularMoviesEvent {
  const PopularMoviesEvent(this.page);
  final int page;
}

class FetchPopularMoviesEvent extends PopularMoviesEvent {
  const FetchPopularMoviesEvent(super.page);
}
