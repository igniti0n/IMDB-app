import 'package:flutter/foundation.dart';

void safeLog(String message) {
  if (kDebugMode) {
    print(message);
  }
}

String pathForSvgAsset(String assetName) => 'assets/svg/$assetName.svg';
