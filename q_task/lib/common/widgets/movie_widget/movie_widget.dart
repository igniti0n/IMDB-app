import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../utils/dev_utils.dart';
import 'movie_header_widget.dart';

class MovieWidget extends StatelessWidget {
  const MovieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        children: [
          Hero(
            tag: 'imageHeroTag',
            child: CachedNetworkImage(
              imageUrl: urlForPosterImage('/aWeKITRFbbwY8txG5uCj4rMCfSP.jpg'),
              colorBlendMode: BlendMode.clear,
              filterQuality: FilterQuality.high,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageBuilder: (context, imageProvider) => Container(
                clipBehavior: Clip.antiAlias,
                width: 100,
                height: 100,
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
          const Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 20, 0),
              child: MovieHeaderWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
