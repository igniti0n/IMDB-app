// ignore: avoid_classes_with_only_static_members
import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class FontStyles {
  static TextStyle get semiBold12 => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 12,
        fontFamily: 'SfProSemiBold',
      );

  static TextStyle semiBold15 = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15,
    fontFamily: 'SfProSemiBold',
  );

  static TextStyle semiBold22 = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 22,
    fontFamily: 'SfProSemiBold',
  );

  static TextStyle regular12 = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    fontFamily: 'SfProRegular',
  );

  static TextStyle light12 = const TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 12,
    fontFamily: 'SfProRegular',
  );
}
