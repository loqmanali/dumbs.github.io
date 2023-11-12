import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;
  double get toPadding => MediaQuery.viewPaddingOf(this).top;
  double get bottom => MediaQuery.viewInsetsOf(this).bottom;
  EdgeInsets get paddingViewInsets => MediaQuery.viewInsetsOf(this);
  EdgeInsets get paddingViewPadding => MediaQuery.viewPaddingOf(this);
  EdgeInsets get padding => MediaQuery.paddingOf(this);

  double kWidth(double kWidth) => width * kWidth / 196.6;
  double kHeight(double kHeight) => height * kHeight / 430.2;

  // double availableHeight(double kHeight) => height - kHeight - toPadding;

  // final appBarHeight = AppBar().preferredSize.height;
  // final statusBarHeight = MediaQuery.of(this).padding.top;
  // final availableHeight = constraints.maxHeight - appBarHeight - statusBarHeight;

  double get appBarHeight => AppBar().preferredSize.height;
  double get statusBarHeight => MediaQuery.paddingOf(this).top;
  double get bottomPadding => MediaQuery.paddingOf(this).bottom;
  double get availableHeight => height - appBarHeight - statusBarHeight - bottomPadding;

  double get sp => MediaQuery.textScaleFactorOf(this);

  double get hPadding => width;
  double get vPadding => height;
}