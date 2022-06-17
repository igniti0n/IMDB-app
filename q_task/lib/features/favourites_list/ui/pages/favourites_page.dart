import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constants/colors.dart';
import '../../../../common/constants/fonts.dart';
import '../../../../common/widgets/movie_widget/movie_widget.dart';
import '../../../../common/models/movie/movie.dart';
import '../blocs/bloc/favourites_bloc.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  final _animatedListKey = GlobalKey<AnimatedListState>();
  late final StreamSubscription<int> _favouriteMovieIndexRemovedSubscription;

  @override
  void initState() {
    _favouriteMovieIndexRemovedSubscription =
        BlocProvider.of<FavouritesBloc>(context)
            .favouriteMovieIndexRemoved
            .listen((removedFavouriteIndex) {
      _animatedListKey.currentState?.removeItem(removedFavouriteIndex,
          (context, animation) => buildItem(removedFavouriteIndex, animation));
    });
    super.initState();
  }

  @override
  void dispose() {
    _favouriteMovieIndexRemovedSubscription.cancel();
    _animatedListKey.currentState?.dispose();
    super.dispose();
  }

  Widget buildItem(int index, Animation<double> animation) => AnimatedOpacity(
        opacity: 1 - animation.value,
        duration: const Duration(milliseconds: 500),
        child: Container(
          width: double.infinity,
          height: 100,
          color: AppColors.qSplashColor,
        ),
      );

  void removeItem(int index) {
    _animatedListKey.currentState?.removeItem(
        index, (context, animation) => MovieWidget(movie: Movie.empty()));
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              'Favourites',
              style: FontStyles.semiBold22,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: AnimatedList(
              key: _animatedListKey,
              initialItemCount: BlocProvider.of<FavouritesBloc>(context)
                  .state
                  .favouriteMovies
                  .length,
              itemBuilder: (ctx, index, animation) => ConstrainedBox(
                constraints:
                    const BoxConstraints(minHeight: 100, maxHeight: 120),
                child: MovieWidget(
                  movie: BlocProvider.of<FavouritesBloc>(context)
                      .state
                      .favouriteMovies[index],
                ),
              ),
            ),
          ),
        ],
      );
}
