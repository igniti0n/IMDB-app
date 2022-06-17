import 'package:flutter/material.dart';

import '../../../../common/constants/fonts.dart';

class MoviesListNoItemsMessage extends StatelessWidget {
  const MoviesListNoItemsMessage({super.key, required this.message});

  factory MoviesListNoItemsMessage.noItemsFound() =>
      const MoviesListNoItemsMessage(message: 'No items fuond.');

  factory MoviesListNoItemsMessage.noMoreItems() =>
      const MoviesListNoItemsMessage(message: 'No more items.');

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No items found.',
        style: FontStyles.semiBold15,
        textAlign: TextAlign.center,
      ),
    );
  }
}
