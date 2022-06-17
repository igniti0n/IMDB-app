import 'package:flutter/material.dart';

import '../../../../common/constants/colors.dart';
import '../../../../common/constants/fonts.dart';

class MoviesListError extends StatelessWidget {
  const MoviesListError({super.key, required this.onTryAgain});
  final Function() onTryAgain;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Retry request',
            style: FontStyles.semiBold15,
            textAlign: TextAlign.center,
          ),
          IconButton(
            onPressed: onTryAgain,
            icon: const Icon(
              Icons.replay_outlined,
              color: AppColors.qPrimary,
            ),
          )
        ],
      ),
    );
  }
}
