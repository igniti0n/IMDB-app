import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/movie/movie.dart';
import '../../constants/fonts.dart';
import '../../utils/dev_utils.dart';
import 'favourite_badge_widget.dart';
import 'genre_widget.dart';

class MovieHeaderWidget extends StatelessWidget {
  const MovieHeaderWidget({
    super.key,
    required this.titleTextStyle,
    required this.genreTextStyle,
    required this.titlePadding,
    required this.genrePadding,
    required this.genreTextHorizontalPadding,
    required this.movie,
    required this.maxLines,
  });
  factory MovieHeaderWidget.forMovieDetails({required Movie movieUi}) =>
      MovieHeaderWidget(
        titleTextStyle: FontStyles.semiBold20,
        genreTextStyle: FontStyles.regular12,
        titlePadding: 8,
        genrePadding: 16,
        genreTextHorizontalPadding: 8,
        maxLines: 0,
        movie: movieUi,
      );
  factory MovieHeaderWidget.forMoviesList({required Movie movieUi}) =>
      MovieHeaderWidget(
        titleTextStyle: FontStyles.semiBold15,
        genreTextStyle: FontStyles.regular11,
        titlePadding: 2,
        genrePadding: 4,
        genreTextHorizontalPadding: 12,
        maxLines: 2,
        movie: movieUi,
      );
  final TextStyle titleTextStyle;
  final TextStyle genreTextStyle;
  final double titlePadding;
  final double genrePadding;
  final double genreTextHorizontalPadding;
  final int maxLines;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                movie.title,
                style: titleTextStyle,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            SizedBox(
              width: titlePadding,
            ),
            FavouriteBadgeWidget(movie: movie),
          ],
        ),
        SizedBox(
          height: titlePadding,
        ),
        Row(
          children: [
            SvgPicture.asset(
              pathForSvgAsset('star'),
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                '${movie.voteAverage} / 10 IMDb',
                style: FontStyles.regular12,
                overflow: TextOverflow.fade,
              ),
            ),
          ],
        ),
        SizedBox(
          height: genrePadding,
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              child: Wrap(
                children: List.generate(
                  movie.genres.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                      vertical: 1,
                    ),
                    child: GenreWidget(
                      name: movie.genres[index],
                      textStyle: genreTextStyle,
                      textHorizontalPadding: genreTextHorizontalPadding,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
