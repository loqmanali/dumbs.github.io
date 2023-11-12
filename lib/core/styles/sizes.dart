import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sizes {

  //Font sizes
  static fontSizes() => {
        "h0": 40.0.sp,
        "h1": 32.0.sp,
        "h2": 24.0.sp,
        "h3": 20.0.sp,
        "h4": 17.0.sp,
        "h5": 14.0.sp,
        "h6": 12.0.sp,
        "h7": 10.0.sp,
        "h8": 8.0.sp,
        "h9": 6.0.sp,
      };

  static font() => {
        "h0": 40.0,
        "h1": 32.0,
        "h2": 24.0,
        "h3": 20.0,
        "h4": 17.0,
        "h5": 14.0,
        "h6": 12.0,
        "h7": 10.0,
        "h8": 8.0,
        "h9": 6.0,
      };

  //Icons sizes
  static iconsSizes() => {
        "s1": 95.r,
        "s2": 70.r,
        "s3": 48.r,
        "s4": 32.r,
        "s5": 24.r,
        "s6": 19.r,
        "s7": 14.r,
      };

  //Screens Padding
  static screenVPaddingDefault() => 20.h;
  static screenHPaddingDefault() => 40.w;
  static screenVPaddingHigh() => 80.h;
  static screenHPaddingMedium() => 36.w;

  //Widgets Padding
  static vPaddingHighest() => 40.h;
  static vPaddingHigh() => 30.h;
  static vPaddingMedium() => 22.h;
  static vPaddingSmall() => 16.h;
  static vPaddingSmallest() => 10.h;
  static vPaddingTiny() => 5.h;
  static hPaddingHighest() => 40.w;
  static hPaddingHigh() => 30.w;
  static hPaddingMedium() => 22.w;
  static hPaddingSmall() => 16.w;
  static hPaddingSmallest() => 10.w;
  static hPaddingTiny() => 5.w;

  //Widgets Margin
  static vMarginExtreme() => 80.h;
  static vMarginHighest() => 40.h;
  static vMarginHigh() => 30.h;
  static vMarginMedium() => 22.h;
  static vMarginSmall() => 16.h;
  static vMarginSmallest() => 10.h;
  static vMarginComment() => 8.h;
  static vMarginTiny() => 5.h;
  static vMarginDot() => 3.h;
  static hMarginExtreme() => 70.w;
  static hMarginHighest() => 40.w;
  static hMarginHigh() => 30.w;
  static hMarginMedium() => 22.w;
  static hMarginSmall() => 16.w;
  static hMarginSmallest() => 10.w;
  static hMarginComment() => 8.w;
  static hMarginTiny() => 5.w;
  static hMarginDot() => 3.w;

  //Buttons
  static roundedButtonMinHeight() => 40.h;
  static roundedButtonMinWidth() => 60.w;
  static roundedButtonDefaultHeight() => 50.h;
  static roundedButtonDefaultWidth() => 300.w;
  static roundedButtonDefaultRadius() => 26.r;
  static roundedButtonDialogHeight() => 44.h;
  static roundedButtonDialogWidth() => 240.w;
  static roundedButtonHighWidth() => 260.w;
  static roundedButtonMediumHeight() => 44.h;
  static roundedButtonMediumWidth() => 140.w;
  static roundedButtonSmallWidth() => 116.w;
  static textButtonMinWidth() => 60.w;
  static textButtonMinHeight() => 34.h;

  //TextFields
  static textFieldDefaultRadius() => 12.r;
  static textFieldVMarginDefault() => 24.h;
  static textFieldHPaddingDefault() => 16.w;
  static textFieldVPaddingDefault() => 16.h;
  static cTextFieldVPaddingDefault() => 12.h;
  static cTextFieldTitleWidthDefault() => 148.w;

  //Cards
  static cardVPadding() => 16.h;
  static cardHRadius() => 20.w;
  static cardRadius() => 14.r;

  //Dialogs
  static dialogVPadding() => 30.h;
  static dialogHPadding() => 20.w;
  static dialogRadius() => 24.r;
  static dialogHPaddingMedium() => 10.w;
  static dialogHPaddingSmall() => 4.w;
  static dialogSmallRadius() => 6.r;

  //LoadingIndicators
  static loadingAnimationDefaultHeight() => 150.h;
  static loadingAnimationDefaultWidth() => 150.w;
  static loadingIndicatorDefaultHeight() => 150.r;
  static loadingIndicatorDefaultWidth() => 150.r;
  static loadingListViewDefaultHeight() => 150.h;
  static loadingListViewDefaultWidth() => 136.w;
  static loadingAnimationButton() => 90.r;

  //Images
  static userImageSmallRadius() => 30.r;
  static userImageMediumRadius() => 56.r;
  static userImageHighRadius() => 66.r;
  static statusCircleRadius() => 8.r;
  static qrImageRadius() => 100.r;
  static pickedImageMaxSize() => 400.r;

  //Text
  static smallTextHeight() => 1.4.h;

  //Map
  static mapSearchBarHeight() => 54.h;
  static mapSearchBarTopMargin() => 50.h;
  static mapSearchBarRadius() => 8.r;
  static mapDirectionsInfoTop() => 116.h;
  static mapDirectionsInfoRadius() => 20.r;
  static mapConfirmButtonBottom() => 42.h;
  static mapConfirmButtonLeft() => 40.w;

  //AppBar & Drawer
  static appBarDefaultHeight() => 60.h;
  static appBarStatusBarHeight() => 24.h;
  static appBarBackButtonRadius() => 32.r;
  static appBarMenuButtonRadius() => 32.r;
  static mainDrawerWidth() => 250.w;
  static mainDrawerHPadding() => 30.w;
  static mainDrawerVPadding() => 90.h;
  static appBarIconSize() => 26.r;

  ///Core
  static toastRadius() => 20.r;

  ///App Constants
  static screenTopShadowHeight() => 400.h;
  static splashLogoSize() => 220.r;
  static loginLogoSize() => 126.r;
  static switchThemeButtonWidth() => 44.w;
  static navBarIconRadius() => 26.r;
  static cupertinoNavBarHeight() => 58.h;
}

class AppMargin {
  static const double m5 = 5.0;
  static const double m8 = 8.0;
  static const double m12 = 12.0;
  static const double m14 = 14.0;
  static const double m16 = 16.0;
  static const double m18 = 18.0;
  static const double m20 = 20.0;
}

class AppPadding {
  static const double p2 = 2.0;
  static const double p8 = 8.0;
  static const double p12 = 12.0;
  static const double p14 = 14.0;
  static const double p16 = 16.0;
  static const double p18 = 18.0;
  static const double p20 = 20.0;
  static const double p24 = 24.0;
  static const double p28 = 28.0;
  static const double p30 = 30.0;
  static const double p60 = 60.0;
  static const double p100 = 100.0;
  static const double p0 = 0.0;
  static const double p10 = 10.0;
}

class AppSize {
  static const double s0 = 0;
  static const double s1 = 1;
  static const double s1_5 = 1.5;
  static const double s4 = 4.0;
  static const double s5 = 5.0;
  static const double s8 = 8.0;
  static const int si8 = 8;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s15 = 15.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s19 = 19.0;
  static const double s20 = 20.0;
  static const double s28 = 28.0;
  static const double s40 = 40.0;
  static const double s60 = 60.0;
  static const double s65 = 65.0;
  static const double s90 = 90.0;
  static const double s100 = 100.0;
  static const double s120 = 120.0;
  static const double s130 = 130.0;
  static const double s140 = 140.0;
  static const double s180 = 180.0;
  static const double s190 = 190.0;
  static const double s25 = 25.0;
  static const double s50 = 50.0;
  static const double s35 = 35.0;
  static const double s30 = 30.0;
  static const double s142_53 = 142.53;
  static const double s25_78 = 25.78;
  static const double s21_53 = 21.53;
  static const double s45_68 = 45.68;
  static const double s55 = 55.0;
  static const double s53 = 53.0;
  static const double s148 = 148.0;
  static const double s10 = 10.0;
  static const double s76 = 76.0;
  static const double s25_6 = 25.6;
  static const double s31_73 = 31.73;
  static const double s35_92 = 35.92;
  static const double s39_97 = 39.97;
  static const double s43_18 = 43.18;
  static const double s43_32 = 43.32;
  static const double s45_44 = 45.44;
  static const double s45_53 = 45.53;
  static const double s46_18 = 46.18;
  static const double s46_32 = 46.32;
  static const double s141_5 = 141.5;
  static const double s11 = 11.0;
}

class DurationConstant {
  static const int d300 = 300;
}

abstract class SaudiEventsSpacing {

  /// The default unit of spacing
  static const double spaceUnit = 16;

  /// xxxs spacing value (1pt)
  static const double xxxs = 0.0625 * spaceUnit;

  /// xxs spacing value (2pt)
  static const double xxs = 0.125 * spaceUnit;

  /// xs spacing value (4pt)
  static const double xs = 0.25 * spaceUnit;

  /// sm spacing value (8pt)
  static const double sm = 0.5 * spaceUnit;

  /// md spacing value (12pt)
  static const double md = 0.75 * spaceUnit;

  /// lg spacing value (16pt)
  static const double lg = spaceUnit;

  /// xlg spacing value (24pt)
  static const double xlg = 1.5 * spaceUnit;

  /// xxlg spacing value (40pt)
  static const double xxlg = 2.5 * spaceUnit;

  /// xxxlg spacing value (64pt)
  static const double xxxlg = 4 * spaceUnit;

  /// xxxlg spacing value (88pt)
  static const double xxxxlg = 5.5 * spaceUnit;

  /// s10
  static const double s10 = 10;

}