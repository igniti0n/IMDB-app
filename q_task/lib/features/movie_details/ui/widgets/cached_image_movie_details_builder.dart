import 'package:flutter/material.dart';

class CachedImageMovieDetailsBuilder extends StatelessWidget {
  const CachedImageMovieDetailsBuilder({
    super.key,
    required this.imageProvider,
  });
  final ImageProvider<Object> imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(2)),
        image: DecorationImage(
          filterQuality: FilterQuality.high,
          image: imageProvider,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
