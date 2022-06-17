import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CachedImageError extends StatelessWidget {
  const CachedImageError({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: AppColors.qText,
      child: const Center(
        child: Icon(Icons.error),
      ),
    );
  }
}
