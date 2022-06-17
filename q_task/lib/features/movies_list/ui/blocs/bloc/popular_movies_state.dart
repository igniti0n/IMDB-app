part of 'popular_movies_bloc.dart';

@immutable
abstract class PopularMoviesState extends Equatable {
  const PopularMoviesState(this.movies);

  final List<Movie> movies;

  @override
  List<Object?> get props => movies;
}

class PopularMoviesInitial extends PopularMoviesState {
  const PopularMoviesInitial() : super(const []);
}

class PopularMoviesLoading extends PopularMoviesState {
  const PopularMoviesLoading() : super(const []);
}

class PopularMoviesLoaded extends PopularMoviesState {
  const PopularMoviesLoaded(super.movies);
}

class PopularMoviesError extends PopularMoviesState {
  const PopularMoviesError(this.failure) : super(const []);
  final Failure failure;
}
