part of 'popular_movies_bloc.dart';

@immutable
abstract class PopularMoviesEvent implements Equatable {
  const PopularMoviesEvent(this.page);

  final int page;

  @override
  List<Object?> get props => [page];

  @override
  bool? get stringify => true;
}

class FetchPopularMoviesEvent extends PopularMoviesEvent {
  const FetchPopularMoviesEvent(super.page);
}
