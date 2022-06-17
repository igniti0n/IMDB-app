import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:implicitly_animated_list/implicitly_animated_list.dart';

import '../../../../common/constants/fonts.dart';
import '../../../../common/widgets/movie_widget/movie_widget.dart';
import '../../../../common/models/movie/movie.dart';
import '../blocs/bloc/favourites_bloc.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

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
          Expanded(child: BlocBuilder<FavouritesBloc, FavouritesState>(
            builder: (_, favouriteMoviesState) {
              return ImplicitlyAnimatedList<Movie>(
                itemData: favouriteMoviesState.favouriteMovies,
                itemBuilder: (context, movie) => ConstrainedBox(
                    constraints:
                        const BoxConstraints(minHeight: 100, maxHeight: 120),
                    child: MovieWidget(movie: movie)),
              );
            },
          )),
        ],
      );
}
