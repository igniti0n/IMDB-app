import 'package:flutter/material.dart';

class CachedImageBuilder extends StatelessWidget {
  const CachedImageBuilder({
    super.key,
    required this.imageProvider,
  });
  final ImageProvider<Object> imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
