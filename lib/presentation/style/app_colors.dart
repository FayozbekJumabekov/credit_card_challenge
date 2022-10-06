import 'package:flutter/material.dart';

abstract class AppColors {
  AppColors._();

  static const Color shimmerBaseDark = Color(0xFF373737);
  static const Color shimmerHighlightDark = Color(0xFF4A4A4A);

  /// light
  static const Color primary = Color(0xff00B383);
  static const Color secondary = Color(0xffB5EBCD);

  static const Color backgroundLight = Color(0xFFF9F9F9);
  static const Color cardBackgroundLight = Color(0xFFFFFFFF);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF6F6F6F);
  static const Color bgGrey2 = Color(0xFFF2F2F3);
  static const Color stroke2 = Color(0xFFE6E6E6);
  static const Color text1 = Color(0xFF00040A);
  static const Color text2 = Color(0xFF323232);
  static const Color text3 = Color(0xFF66686C);
  static const Color text4 = Color(0xFF808284);
  static const Color text5 = Color(0xFFC1C1C1);
  static const Color transparent = Color(0x00000000);
  static const Color divider = Color(0xffEDEDED);
  static const Color chevronColor = Color(0xffDEDEDE);
  static const Color serviceTitle = Color(0xff505050);

  static const Color greyF9 = Color(0xFFF9F9F9);
  static const Color greyF0 = Color(0xFFF0F0F0);
  static const Color greyEA = Color(0xFFEAEAEA);
  static const Color greyCF = Color(0xFFCFCFCF);
  static const Color greyBD = Color(0xFFBDBDBD);
  static const Color grey6F = Color(0xFF6F6F6F);
  static const Color blueLine = Color(0xFF63B9F8);
  static const Color yellowLine = Color(0xFFFFA41B);
  static const Color assetsLine = Color(0xFFFF9898);
  static const Color blue = Color(0xFF0E73F6);
  static const Color yellow = Color(0xFFF39200);

  static const Color red = Color(0xFFC32C31);
  static const Color redOpacity5 = Color.fromRGBO(217, 5, 6, 0.05);

  static const Color blue7Transparent = Color(0x120E73F6);
  static const Color red7Transparent = Color(0x12D90506);
  static const Color yellow7Transparent = Color(0x12F39200);
  static const Color assets7Transparent = Color(0x12C32C31);
  static const Color grey15Transparent = Color(0x2600040A);

  /// dark

  static const Color assetsDark = Color(0xFFFE3334);

  static const Color backgroundDark = Color(0xFF272727);
  static const Color cardBackgroundDark = Color(0xFF2D2D2D);
  static const Color dividerDark = Color.fromRGBO(244, 244, 244, 0.5);
  static const Color labelDark = Color.fromRGBO(204, 204, 204, 1);
  static const Color darkButton = Color.fromRGBO(61, 61, 61, 1);
}
