import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class GenreWidget extends StatelessWidget {
  const GenreWidget(
      {super.key,
      required this.name,
      required this.textStyle,
      required this.textHorizontalPadding});
  final String name;
  final TextStyle textStyle;
  final double textHorizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: AppColors.qPrimaryFaded,
      ),
      child: Text(
        name,
        style: textStyle,
      ),
    );
  }
}
