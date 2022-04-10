import 'dart:math';

import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get md1 => mediaQuery.size.width * 1 / 12;
  double get md2 => mediaQuery.size.width * 2 / 12;
  double get md3 => mediaQuery.size.width * 3 / 12;
  double get md4 => mediaQuery.size.width * 4 / 12;
  double get md5 => mediaQuery.size.width * 5 / 12;
  double get md6 => mediaQuery.size.width * 6 / 12;
  double get md7 => mediaQuery.size.width * 7 / 12;
  double get md8 => mediaQuery.size.width * 8 / 12;
  double get md9 => mediaQuery.size.width * 9 / 12;
  double get md10 => mediaQuery.size.width * 10 / 12;
  double get md11 => mediaQuery.size.width * 11 / 12;
  double get md12 => mediaQuery.size.width * 12 / 13;

  double get lowValuePercent => height * 0.01;
  double get normalValuePercent => height * 0.02;
  double get maroonFlushElevatedButtonHeight => height * 0.075;
  double get mediumValuePercent => height * 0.09;
  double get highValuePercent => height * 0.1;

  double get lowValue => height * 0.01;
  double get normalValue => 52;
  double get mediumValue => height * 0.04;
  double get highValue => 127;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingLowPercent => EdgeInsets.all(lowValuePercent);
  EdgeInsets get paddingNormalPercent => EdgeInsets.all(normalValuePercent);
  EdgeInsets get paddingMediumPercent => EdgeInsets.all(mediumValuePercent);
  EdgeInsets get paddingHighPercent => EdgeInsets.all(highValuePercent);

  EdgeInsets get paddingLow => EdgeInsets.all(lowValuePercent);
  EdgeInsets get paddingNormal => EdgeInsets.all(normalValue);
  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValuePercent);
  EdgeInsets get paddingHigh => EdgeInsets.all(highValue);
}

extension BorderRadiusExtension on BuildContext {
  BorderRadius get borderRadiusLow => BorderRadius.circular(10);
  BorderRadius get borderRadiusMedium => BorderRadius.circular(20);
  BorderRadius get borderRadiusHigh => BorderRadius.circular(20);
}

extension PageExtension on BuildContext {
  Color get randomColor => Colors.primaries[Random().nextInt(17)];
}

extension DurationExtension on BuildContext {
  Duration get lowDuration => const Duration(milliseconds: 500);
  Duration get normalDuration => const Duration(seconds: 1);
}
