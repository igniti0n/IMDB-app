import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants/colors.dart';
import '../../../../common/utils/dev_utils.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.qText,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.qBackground,
            expandedHeight: 335,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'imageHeroTag',
                child: CachedNetworkImage(
                  imageUrl:
                      urlForPosterImage('/aWeKITRFbbwY8txG5uCj4rMCfSP.jpg'),
                  colorBlendMode: BlendMode.clear,
                  filterQuality: FilterQuality.high,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageBuilder: (context, imageProvider) => Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(2)),
                      image: DecorationImage(
                        filterQuality: FilterQuality.high,
                        image: imageProvider,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              transform: Matrix4.translationValues(0, -20, 0),
              height: 2000,
              decoration: const BoxDecoration(
                color: AppColors.qBackground,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
