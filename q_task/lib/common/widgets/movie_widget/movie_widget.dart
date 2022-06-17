import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/movie/movie.dart';
import '../../navigation/routes.dart';
import '../../utils/dev_utils.dart';
import '../../../features/movies_list/ui/widgets/cached_image_movie_builder.dart';
import '../cached_image/cached_image_error.dart';
import '../cached_image/cached_image_placeholder.dart';
import 'movie_header_widget.dart';

class MovieWidget extends StatelessWidget {
  const MovieWidget({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: GestureDetector(
        onTap: () =>
            Navigator.of(context).pushNamed(rDetailsPage, arguments: movie),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: urlForPosterImage(movie.posterPath),
              colorBlendMode: BlendMode.clear,
              filterQuality: FilterQuality.high,
              placeholder: (context, url) => const CachedImagePlaceholder(),
              errorWidget: (context, url, error) => const CachedImageError(),
              imageBuilder: (context, imageProvider) => CachedImageBuilder(
                imageProvider: imageProvider,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: MovieHeaderWidget.forMoviesList(
                  movieUi: movie,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
