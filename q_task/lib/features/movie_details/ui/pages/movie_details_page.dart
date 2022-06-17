import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/constants/colors.dart';
import '../../../../common/utils/dev_utils.dart';
import '../../../../common/models/movie/movie.dart';
import '../../../../common/widgets/cached_image/cached_image_error.dart';
import '../../../../common/widgets/cached_image/cached_image_placeholder.dart';
import '../widgets/cached_image_movie_details_builder.dart';
import '../widgets/movie_description_widget.dart';
import '../widgets/movie_details_custom_bar.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.qBackground,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            leadingWidth: 48,
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  pathForSvgAsset('arrow_back'),
                ),
              ),
            ),
            backgroundColor: AppColors.qBackground,
            expandedHeight: 335,
            bottom: MovieDetailsCustomBar(
              movie: movie,
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl: urlForPosterImage(movie.posterPath),
                colorBlendMode: BlendMode.clear,
                filterQuality: FilterQuality.high,
                placeholder: (context, url) => const CachedImagePlaceholder(),
                errorWidget: (context, url, error) => const CachedImageError(),
                imageBuilder: (context, imageProvider) =>
                    CachedImageMovieDetailsBuilder(
                  imageProvider: imageProvider,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: MovieDescriptionWidget(description: movie.overview),
          )
        ],
      ),
    );
  }
}
