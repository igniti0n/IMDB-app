import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../../../../common/constants/fonts.dart';
import '../../../../common/errors/exception_to_failure_mapper.dart';
import '../../../../common/errors/exceptions.dart';
import '../../../../common/utils/dev_utils.dart';
import '../../../../common/widgets/movie_widget/movie_widget.dart';
import '../blocs/bloc/popular_movies_bloc.dart';
import '../../../../common/models/movie/movie.dart';
import '../widgets/movies_list_error.dart';
import '../widgets/movies_list_no_items_message.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  final PagingController<int, Movie> _pagingController =
      PagingController(firstPageKey: 0);
  late final StreamSubscription<bool> _internetConnectionSubscription;

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      BlocProvider.of<PopularMoviesBloc>(context)
          .add(FetchPopularMoviesEvent(pageKey));
    });
    listenToInternetConnectionChanges();
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  void listenToInternetConnectionChanges() {
    _internetConnectionSubscription =
        BlocProvider.of<PopularMoviesBloc>(context)
            .internetConnectionState
            .listen((bool isConnected) {
      safeLog('!!!! Is connected: $isConnected  !!!!');
      if (isConnected) {
        _pagingController.retryLastFailedRequest();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(ExceptionToFailureMapper.mapExceptionToFailure(
                    NoInternetException())
                .message),
          ),
        );
      }
    });
  }

  void listenToPopularMoviesBloc(BuildContext ctx, PopularMoviesState state) {
    if (state is PopularMoviesLoaded) {
      final nextPageKey = _pagingController.nextPageKey ?? 0;
      _pagingController.appendPage(
          state.movies, nextPageKey + state.movies.length);
    } else if (state is PopularMoviesError) {
      _pagingController.error = state.failure;
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          content: Text(state.failure.message),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<PopularMoviesBloc, PopularMoviesState>(
        listener: (ctx, state) => listenToPopularMoviesBloc(ctx, state),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'Popular',
                style: FontStyles.semiBold22,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: PagedListView<int, Movie>(
                pagingController: _pagingController,
                itemExtent: 120,
                builderDelegate: PagedChildBuilderDelegate<Movie>(
                  itemBuilder: (ctx, movie, _) => MovieWidget(movie: movie),
                  firstPageErrorIndicatorBuilder: (_) => MoviesListError(
                      onTryAgain: () =>
                          _pagingController.retryLastFailedRequest()),
                  newPageErrorIndicatorBuilder: (_) => MoviesListError(
                      onTryAgain: () =>
                          _pagingController.retryLastFailedRequest()),
                  firstPageProgressIndicatorBuilder: (_) => const Center(
                    child: CircularProgressIndicator.adaptive(
                      strokeWidth: 1.4,
                    ),
                  ),
                  newPageProgressIndicatorBuilder: (_) => const Center(
                    child: CircularProgressIndicator.adaptive(
                      strokeWidth: 1.4,
                    ),
                  ),
                  noItemsFoundIndicatorBuilder: (_) =>
                      MoviesListNoItemsMessage.noItemsFound(),
                  noMoreItemsIndicatorBuilder: (_) =>
                      MoviesListNoItemsMessage.noMoreItems(),
                ),
              ),
            ),
          ],
        ),
      );
}
