import 'package:flutter/material.dart';

import '../../../../common/constants/colors.dart';
import '../../../../common/widgets/movie_widget/movie_header_widget.dart';
import '../../../../common/models/movie/movie.dart';

class MovieDetailsCustomBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MovieDetailsCustomBar({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        transform: Matrix4.translationValues(0, 10, 0),
        decoration: const BoxDecoration(
          color: AppColors.qBackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: MovieHeaderWidget.forMovieDetails(
          movieUi: movie,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(100, 108);
}
