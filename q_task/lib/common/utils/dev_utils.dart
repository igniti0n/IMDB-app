import 'package:flutter/foundation.dart';

void safeLog(String message) {
  if (kDebugMode) {
    print(message);
  }
}

String pathForSvgAsset(String assetName) => 'assets/svg/$assetName.svg';

String urlForPosterImage(String posterPath) =>
    'https://image.tmdb.org/t/p/w500$posterPath';
