import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/constants/colors.dart';
import '../../../common/constants/fonts.dart';
import '../../../common/utils/dev_utils.dart';

class AppNavBarItem extends StatelessWidget {
  AppNavBarItem({
    super.key,
    required this.title,
    required this.svgAssetPath,
    required bool isSelected,
  }) {
    color = isSelected ? AppColors.qPrimary : AppColors.qText;
  }
  final String title;
  final String svgAssetPath;
  late final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          pathForSvgAsset(svgAssetPath),
          color: color,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: FontStyles.regular12.copyWith(color: color),
        ),
      ],
    );
  }
}
