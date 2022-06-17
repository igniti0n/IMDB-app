import 'package:flutter/material.dart';

class CachedImagePlaceholder extends StatelessWidget {
  const CachedImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Center(
        child: CircularProgressIndicator.adaptive(strokeWidth: 1.4),
      ),
    );
  }
}
