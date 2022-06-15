import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/fonts.dart';
import '../../utils/dev_utils.dart';
import 'genre_widget.dart';

class MovieHeaderWidget extends StatelessWidget {
  const MovieHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'Batman: The Dark Knight Rises',
                style: FontStyles.semiBold15,
                overflow: TextOverflow.fade,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: SvgPicture.asset(
                pathForSvgAsset('favourite_unselected'),
                alignment: Alignment.topRight,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            SvgPicture.asset(
              pathForSvgAsset('star'),
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              '8.4 / 10 IMDb',
              style: FontStyles.regular12,
              overflow: TextOverflow.fade,
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              3,
              (index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                child: GenreWidget(name: 'Action'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
