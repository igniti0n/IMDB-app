import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../features/favourites_list/ui/blocs/bloc/favourites_bloc.dart';
import '../../models/movie/movie.dart';
import '../../utils/dev_utils.dart';

class FavouriteBadgeWidget extends StatelessWidget {
  const FavouriteBadgeWidget({
    super.key,
    required this.movie,
  });
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<FavouritesBloc>(context).add(
          ToggleFavouriteEvent(movie),
        );
      },
      child: Container(
        height: 24,
        width: 24,
        alignment: Alignment.center,
        child: BlocBuilder<FavouritesBloc, FavouritesState>(
          builder: (_, favouriteState) {
            if (isCurrentMovieFavourite(favouriteState.favouriteMovies)) {
              return SvgPicture.asset(
                pathForSvgAsset('favourite_selected'),
                alignment: Alignment.topRight,
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(right: 2),
                child: SvgPicture.asset(
                  pathForSvgAsset('favourite_unselected'),
                  alignment: Alignment.topRight,
                ),
              );
            }
          },
        ),
      ),
    );
  }

  bool isCurrentMovieFavourite(List<Movie> favorites) {
    return favorites.any((favouriteMovie) => favouriteMovie.id == movie.id);
  }
}
