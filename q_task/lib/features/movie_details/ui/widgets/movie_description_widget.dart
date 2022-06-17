import 'package:flutter/material.dart';

import '../../../../common/constants/fonts.dart';

class MovieDescriptionWidget extends StatelessWidget {
  const MovieDescriptionWidget({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: FontStyles.semiBold15,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            description,
            style: FontStyles.light13,
          ),
        ],
      ),
    );
  }
}
