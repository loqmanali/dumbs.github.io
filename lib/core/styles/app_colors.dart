import 'package:flutter/material.dart';

class AppColor {
  //Main
  static const Color lightThemePrimary = Color(0xFFC11718);
  static const Color darkThemePrimary = Color(0xFFC11718);
  static const Color accentColor = Color(0xFF4b98db);

  //Screen
  static const Color lightThemeStatusBarColor = Color(0xFFFAFAFA);
  static const Color darkThemeStatusBarColor = Color(0xFF303030);
  static const Color lightThemeScaffoldBGColor = Color(0xFFFAFAFA);
  static const Color darkThemeScaffoldBGColor = Color(0xFF303030);
  static const Color lightThemeMajorBGColor = Color(0xffffffff);
  static const Color darkThemeMajorBGColor = Color(0xff212327);

  //Text
  static const Color lightThemeBigTextColor = Color(0xff000000);
  static const Color darkThemeBigTextColor = Color(0xfff0f0f0);
  static const Color lightThemeNormalTextColor = Color(0xff000000);
  static const Color darkThemeNormalTextColor = Color(0xfff0f0f0);
  static const Color lightThemeSmallTextColor = Color(0xFF858992);
  static const Color darkThemeSmallTextColor = Color(0xffcccccc);

  //TextField
  static const Color lightThemeTextFieldFillColor = lightThemeScaffoldBGColor;
  static const Color darkThemeTextFieldFillColor = darkThemeScaffoldBGColor;
  static const Color lightThemeTextFieldTextColor = Color(0xff333333);
  static const Color darkThemeTextFieldTextColor = Color(0xfff0f0f0);
  static const Color lightThemeTextFieldHintColor = Color(0xff9b9b9b);
  static const Color darkThemeTextFieldHintColor = Color(0xff9b9b9b);
  static const Color lightThemeTextFieldCursorColor = Color(0xff000000);
  static const Color darkThemeTextFieldCursorColor = Color(0xfff44336);
  static const Color lightThemeTextFieldValidationColor = Color(0xffff0000);
  static const Color darkThemeTextFieldValidationColor = Color(0xffff0000);
  static const Color lightThemeTextFieldBorderColor = Colors.grey;
  static const Color darkThemeTextFieldBorderColor = Colors.grey;
  static const Color lightThemeTextFieldFocusedBorderColor = Color(0xFFC11718);
  static const Color darkThemeTextFieldFocusedBorderColor = Color(0xFFC11718);
  static const Color lightThemeTextFieldErrorBorderColor = Color(0xffff0000);
  static const Color darkThemeTextFieldErrorBorderColor = Color(0xffff0000);

  //Icon
  static const Color lightThemeIconColor = Color(0xff000000);
  static const Color darkThemeIconColor = Color(0xfff0f0f0);

  //Colors
  static const Color lightBlue = Color(0xFF58b9f0);
  static const Color green = Color(0xFF73FF00);
  static const Color blue = Colors.blue;
  static const Color red = Colors.red;
  static const Color lightRed = Color(0xfffd6c57);
  static const Color lightRed1 = Color(0xfffe457c);
  static const Color white0 = Color(0xffffffff);
  static const Color lightBlack = Color(0xff333333);
  static const Color pureWhite = Color(0xdeffffff);
  static const Color highlightGray = Color(0xffe4e4e4);
  static const Color highlightWhite = Color(0xffcccccc);
  static const Color yellow = Color(0xffe4b343);
  static const Color bigTitleColor = Color(0xff000000);
  static const Color bigTitleColorDark = Color(0xffcca76a);
  static const Color lightOrange = Color(0xfffe9654);
  static const Color grey0 = Colors.grey;
  static const Color darkGray = Color(0xff666666);
  static const Color hideGray = Color(0xff9b9b9b);
  static const Color grayWhite = Color(0xfff0f0f0);
  static const Color whiteGray = Color(0x80ffffff);
  static const Color lightBlueSky = Color(0xff00b2ae);
  static const Color lightGray = Color(0xff999999);
  static const Color lightDark = Color(0x3c000000);
  static const Color carbonic = Color(0x1fffffff);
  static const Color toastColor = Color(0xFFC11718);
  static const Color profileColor = Color(0xffe5e5e5);
  static const Color profileColor2 = Color(0xffdddddd);
  static const LinearGradient primaryIngredientColor = LinearGradient(
    colors: [Color(0xFFd74747), Color(0xFFC11718)],
    stops: [0, 1],
  );

  AppColor._();

  static const int _mainColor = 0xff0E4B64;
  static const int _lightMainColor = 0xff177090;
  static const int _blackColor = 0xff181818;
  static const int _blackRatingColor = 0xff2B2B2B;
  static const int _greenColor = 0xff68bc45;
  static const int _lightGreenColor = 0xff72c051;
  static const int _nutritionColor = 0xff50bc28;
  static const int _newNutritionColor = 0xffD0E77F;
  static const int _exercisesColor = 0xffFFE600;
  static const int _exercisesHomeColor = 0xffffc200;
  static const int _servicesColor = 0xffff6700;
  static const int _specialistsColor = 0xff0082cb;
  static const int _specialOffersColor = 0xffa00000;
  static const int _greyColor = 0xffefefef;
  static const int _progressColor = 0xff6D6F84;
  static const int _darkGreyColor = 0xff6D6D6DFF;
  static const int _redColor = 0xffB71515;
  static const int _whiteColor = 0xFFFFFFFF;
  static const int _questionnaireColor = 0xFF262C32;
  static const int _primary = 0xFFED9728;
  static const int _darkGrey = 0xFF525252;
  static const int _grey = 0xFF737477;
  static const int _lightGrey = 0xFF9E9E9E;
  static const int _primaryOpacity70 = 0xFFB3ED9728;
  static const int _darkPrimary = 0xFFd17d11;
  static const int _grey1 = 0xFF707070;
  static const int _grey2 = 0xFF797979;
  static const int _white = 0xFFFFFFFF;
  static const int _error = 0xFFe61f34;
  static const int _black = 0xFF000000;
  static const int _freePlanBg = 0xFF262c32;
  static const int _weeklyPlanBg = 0xFFb178fa;
  static const int _monthlyPlanBg = 0xFF0080ff;
  static const int _months4PlanBg = 0xFFbb222b;
  static const int _btnGradient1Color = 0xFF1732E0;
  static const int _btnGradient2Color = 0xFF5716C1;
  static const int _rmTableColor = 0xFFFFDA66;

  static const MaterialColor mainColor = MaterialColor(
    _mainColor,
    <int, Color>{
      50: Color.fromRGBO(14, 75, 100, 0.1),
      100: Color.fromRGBO(14, 75, 100, 0.2),
      200: Color.fromRGBO(14, 75, 100, 0.3),
      300: Color.fromRGBO(14, 75, 100, 0.4),
      400: Color.fromRGBO(14, 75, 100, 0.5),
      500: Color.fromRGBO(14, 75, 100, 0.6),
      600: Color.fromRGBO(14, 75, 100, 0.7),
      700: Color.fromRGBO(14, 75, 100, 0.8),
      800: Color.fromRGBO(14, 75, 100, 0.9),
      900: Color.fromRGBO(14, 75, 100, 1.0),
    },
  );

  static const MaterialColor lightMainColor = MaterialColor(
    _lightMainColor,
    <int, Color>{
      50: Color.fromRGBO(23, 112, 144, 0.1),
      100: Color.fromRGBO(23, 112, 144, 0.2),
      200: Color.fromRGBO(23, 112, 144, 0.3),
      300: Color.fromRGBO(23, 112, 144, 0.4),
      400: Color.fromRGBO(23, 112, 144, 0.5),
      500: Color.fromRGBO(23, 112, 144, 0.6),
      600: Color.fromRGBO(23, 112, 144, 0.7),
      700: Color.fromRGBO(23, 112, 144, 0.8),
      800: Color.fromRGBO(23, 112, 144, 0.9),
      900: Color.fromRGBO(23, 112, 144, 1.0),
    },
  );

  static const MaterialColor freePlanBg = MaterialColor(
    _freePlanBg,
    <int, Color>{
      50: Color.fromRGBO(38, 44, 50, 0.1),
      100: Color.fromRGBO(38, 44, 50, 0.2),
      200: Color.fromRGBO(38, 44, 50, 0.3),
      300: Color.fromRGBO(38, 44, 50, 0.4),
      400: Color.fromRGBO(38, 44, 50, 0.5),
      500: Color.fromRGBO(38, 44, 50, 0.6),
      600: Color.fromRGBO(38, 44, 50, 0.7),
      700: Color.fromRGBO(38, 44, 50, 0.8),
      800: Color.fromRGBO(38, 44, 50, 0.9),
      900: Color.fromRGBO(38, 44, 50, 1.0),
    },
  );

  static const MaterialColor weeklyPlanBg = MaterialColor(
    _weeklyPlanBg,
    <int, Color>{
      50: Color.fromRGBO(177, 120, 250, 0.1),
      100: Color.fromRGBO(177, 120, 250, 0.2),
      200: Color.fromRGBO(177, 120, 250, 0.3),
      300: Color.fromRGBO(177, 120, 250, 0.4),
      400: Color.fromRGBO(177, 120, 250, 0.5),
      500: Color.fromRGBO(177, 120, 250, 0.6),
      600: Color.fromRGBO(177, 120, 250, 0.7),
      700: Color.fromRGBO(177, 120, 250, 0.8),
      800: Color.fromRGBO(177, 120, 250, 0.9),
      900: Color.fromRGBO(177, 120, 250, 1.0),
    },
  );

  static const MaterialColor monthlyPlanBg = MaterialColor(
    _monthlyPlanBg,
    <int, Color>{
      50: Color.fromRGBO(0, 128, 255, 0.1),
      100: Color.fromRGBO(0, 128, 255, 0.2),
      200: Color.fromRGBO(0, 128, 255, 0.3),
      300: Color.fromRGBO(0, 128, 255, 0.4),
      400: Color.fromRGBO(0, 128, 255, 0.5),
      500: Color.fromRGBO(0, 128, 255, 0.6),
      600: Color.fromRGBO(0, 128, 255, 0.7),
      700: Color.fromRGBO(0, 128, 255, 0.8),
      800: Color.fromRGBO(0, 128, 255, 0.9),
      900: Color.fromRGBO(0, 128, 255, 1.0),
    },
  );
  static const MaterialColor month4PlanBg = MaterialColor(
    _months4PlanBg,
    <int, Color>{
      50: Color.fromRGBO(187, 34, 43, 0.1),
      100: Color.fromRGBO(187, 34, 43, 0.2),
      200: Color.fromRGBO(187, 34, 43, 0.3),
      300: Color.fromRGBO(187, 34, 43, 0.4),
      400: Color.fromRGBO(187, 34, 43, 0.5),
      500: Color.fromRGBO(187, 34, 43, 0.6),
      600: Color.fromRGBO(187, 34, 43, 0.7),
      700: Color.fromRGBO(187, 34, 43, 0.8),
      800: Color.fromRGBO(187, 34, 43, 0.9),
      900: Color.fromRGBO(187, 34, 43, 1.0),
    },
  );

  static const MaterialColor primary = MaterialColor(
    _primary,
    <int, Color>{
      50: Color.fromRGBO(237, 151, 40, 0.1),
      100: Color.fromRGBO(237, 151, 40, 0.2),
      200: Color.fromRGBO(237, 151, 40, 0.3),
      300: Color.fromRGBO(237, 151, 40, 0.4),
      400: Color.fromRGBO(237, 151, 40, 0.5),
      500: Color.fromRGBO(237, 151, 40, 0.6),
      600: Color.fromRGBO(237, 151, 40, 0.7),
      700: Color.fromRGBO(237, 151, 40, 0.8),
      800: Color.fromRGBO(237, 151, 40, 0.9),
      900: Color.fromRGBO(237, 151, 40, 1.0),
    },
  );

  static const MaterialColor darkGrey = MaterialColor(
    _darkGrey,
    <int, Color>{
      50: Color.fromRGBO(82, 82, 82, 0.1),
      100: Color.fromRGBO(82, 82, 82, 0.2),
      200: Color.fromRGBO(82, 82, 82, 0.3),
      300: Color.fromRGBO(82, 82, 82, 0.4),
      400: Color.fromRGBO(82, 82, 82, 0.5),
      500: Color.fromRGBO(82, 82, 82, 0.6),
      600: Color.fromRGBO(82, 82, 82, 0.7),
      700: Color.fromRGBO(82, 82, 82, 0.8),
      800: Color.fromRGBO(82, 82, 82, 0.9),
      900: Color.fromRGBO(82, 82, 82, 1.0),
    },
  );

  static const MaterialColor grey = MaterialColor(
    _grey,
    <int, Color>{
      50: Color.fromRGBO(115, 116, 119, 0.1),
      100: Color.fromRGBO(115, 116, 119, 0.2),
      200: Color.fromRGBO(115, 116, 119, 0.3),
      300: Color.fromRGBO(115, 116, 119, 0.4),
      400: Color.fromRGBO(115, 116, 119, 0.5),
      500: Color.fromRGBO(115, 116, 119, 0.6),
      600: Color.fromRGBO(115, 116, 119, 0.7),
      700: Color.fromRGBO(115, 116, 119, 0.8),
      800: Color.fromRGBO(115, 116, 119, 0.9),
      900: Color.fromRGBO(115, 116, 119, 1.0),
    },
  );

  static const MaterialColor lightGrey = MaterialColor(
    _lightGrey,
    <int, Color>{
      50: Color.fromRGBO(158, 158, 158, 0.1),
      100: Color.fromRGBO(158, 158, 158, 0.2),
      200: Color.fromRGBO(158, 158, 158, 0.3),
      300: Color.fromRGBO(158, 158, 158, 0.4),
      400: Color.fromRGBO(158, 158, 158, 0.5),
      500: Color.fromRGBO(158, 158, 158, 0.6),
      600: Color.fromRGBO(158, 158, 158, 0.7),
      700: Color.fromRGBO(158, 158, 158, 0.8),
      800: Color.fromRGBO(158, 158, 158, 0.9),
      900: Color.fromRGBO(158, 158, 158, 1.0),
    },
  );

  static const MaterialColor primaryOpacity70 = MaterialColor(
    _primaryOpacity70,
    <int, Color>{
      50: Color.fromRGBO(179, 237, 151, 0.1),
      100: Color.fromRGBO(179, 237, 151, 0.2),
      200: Color.fromRGBO(179, 237, 151, 0.3),
      300: Color.fromRGBO(179, 237, 151, 0.4),
      400: Color.fromRGBO(179, 237, 151, 0.5),
      500: Color.fromRGBO(179, 237, 151, 0.6),
      600: Color.fromRGBO(179, 237, 151, 0.7),
      700: Color.fromRGBO(179, 237, 151, 0.8),
      800: Color.fromRGBO(179, 237, 151, 0.9),
      900: Color.fromRGBO(179, 237, 151, 1.0),
    },
  );

  static const MaterialColor darkPrimary = MaterialColor(
    _darkPrimary,
    <int, Color>{
      50: Color.fromRGBO(209, 125, 17, 0.1),
      100: Color.fromRGBO(209, 125, 17, 0.2),
      200: Color.fromRGBO(209, 125, 17, 0.3),
      300: Color.fromRGBO(209, 125, 17, 0.4),
      400: Color.fromRGBO(209, 125, 17, 0.5),
      500: Color.fromRGBO(209, 125, 17, 0.6),
      600: Color.fromRGBO(209, 125, 17, 0.7),
      700: Color.fromRGBO(209, 125, 17, 0.8),
      800: Color.fromRGBO(209, 125, 17, 0.9),
      900: Color.fromRGBO(209, 125, 17, 1.0),
    },
  );


  static const MaterialColor rmTableColor = MaterialColor(
    _rmTableColor,
    <int, Color>{
      50: Color.fromRGBO(255, 218, 102, 0.1),
      100: Color.fromRGBO(255, 218, 102, 0.2),
      200: Color.fromRGBO(255, 218, 102, 0.3),
      300: Color.fromRGBO(255, 218, 102, 0.4),
      400: Color.fromRGBO(255, 218, 102, 0.5),
      500: Color.fromRGBO(255, 218, 102, 0.6),
      600: Color.fromRGBO(255, 218, 102, 0.7),
      700: Color.fromRGBO(255, 218, 102, 0.8),
      800: Color.fromRGBO(255, 218, 102, 0.9),
      900: Color.fromRGBO(255, 218, 102, 1.0),
    },
  );

  static const MaterialColor grey1 = MaterialColor(
    _grey1,
    <int, Color>{
      50: Color.fromRGBO(112, 112, 112, 0.1),
      100: Color.fromRGBO(112, 112, 112, 0.2),
      200: Color.fromRGBO(112, 112, 112, 0.3),
      300: Color.fromRGBO(112, 112, 112, 0.4),
      400: Color.fromRGBO(112, 112, 112, 0.5),
      500: Color.fromRGBO(112, 112, 112, 0.6),
      600: Color.fromRGBO(112, 112, 112, 0.7),
      700: Color.fromRGBO(112, 112, 112, 0.8),
      800: Color.fromRGBO(112, 112, 112, 0.9),
      900: Color.fromRGBO(112, 112, 112, 1.0),
    },
  );

  static const MaterialColor grey2 = MaterialColor(
    _grey2,
    <int, Color>{
      50: Color.fromRGBO(121, 121, 121, 0.1),
      100: Color.fromRGBO(121, 121, 121, 0.2),
      200: Color.fromRGBO(121, 121, 121, 0.3),
      300: Color.fromRGBO(121, 121, 121, 0.4),
      400: Color.fromRGBO(121, 121, 121, 0.5),
      500: Color.fromRGBO(121, 121, 121, 0.6),
      600: Color.fromRGBO(121, 121, 121, 0.7),
      700: Color.fromRGBO(121, 121, 121, 0.8),
      800: Color.fromRGBO(121, 121, 121, 0.9),
      900: Color.fromRGBO(121, 121, 121, 1.0),
    },
  );

  static const MaterialColor white = MaterialColor(
    _white,
    <int, Color>{
      50: Color.fromRGBO(255, 255, 255, 0.1),
      100: Color.fromRGBO(255, 255, 255, 0.2),
      200: Color.fromRGBO(255, 255, 255, 0.3),
      300: Color.fromRGBO(255, 255, 255, 0.4),
      400: Color.fromRGBO(255, 255, 255, 0.5),
      500: Color.fromRGBO(255, 255, 255, 0.6),
      600: Color.fromRGBO(255, 255, 255, 0.7),
      700: Color.fromRGBO(255, 255, 255, 0.8),
      800: Color.fromRGBO(255, 255, 255, 0.9),
      900: Color.fromRGBO(255, 255, 255, 1.0),
    },
  );

  static const MaterialColor error = MaterialColor(
    _error,
    <int, Color>{
      50: Color.fromRGBO(230, 31, 52, 0.1),
      100: Color.fromRGBO(230, 31, 52, 0.2),
      200: Color.fromRGBO(230, 31, 52, 0.3),
      300: Color.fromRGBO(230, 31, 52, 0.4),
      400: Color.fromRGBO(230, 31, 52, 0.5),
      500: Color.fromRGBO(230, 31, 52, 0.6),
      600: Color.fromRGBO(230, 31, 52, 0.7),
      700: Color.fromRGBO(230, 31, 52, 0.8),
      800: Color.fromRGBO(230, 31, 52, 0.9),
      900: Color.fromRGBO(230, 31, 52, 1.0),
    },
  );

  static const MaterialColor black = MaterialColor(
    _black,
    <int, Color>{
      50: Color.fromRGBO(0, 0, 0, 0.1),
      100: Color.fromRGBO(0, 0, 0, 0.2),
      200: Color.fromRGBO(0, 0, 0, 0.3),
      300: Color.fromRGBO(0, 0, 0, 0.4),
      400: Color.fromRGBO(0, 0, 0, 0.5),
      500: Color.fromRGBO(0, 0, 0, 0.6),
      600: Color.fromRGBO(0, 0, 0, 0.7),
      700: Color.fromRGBO(0, 0, 0, 0.8),
      800: Color.fromRGBO(0, 0, 0, 0.9),
      900: Color.fromRGBO(0, 0, 0, 1.0),
    },
  );

  static const MaterialColor blackColor = MaterialColor(
    _blackColor,
    <int, Color>{
      50: Color.fromRGBO(24, 24, 24, 0.1),
      100: Color.fromRGBO(24, 24, 24, 0.2),
      200: Color.fromRGBO(24, 24, 24, 0.3),
      300: Color.fromRGBO(24, 24, 24, 0.4),
      400: Color.fromRGBO(24, 24, 24, 0.5),
      500: Color.fromRGBO(24, 24, 24, 0.6),
      600: Color.fromRGBO(24, 24, 24, 0.7),
      700: Color.fromRGBO(24, 24, 24, 0.8),
      800: Color.fromRGBO(24, 24, 24, 0.9),
      900: Color.fromRGBO(24, 24, 24, 1.0),
    },
  );
  static const MaterialColor progressColor = MaterialColor(
    _progressColor,
    <int, Color>{
      50: Color.fromRGBO(109, 111, 132, 0.1),
      100: Color.fromRGBO(109, 111, 132, 0.2),
      200: Color.fromRGBO(109, 111, 132, 0.3),
      300: Color.fromRGBO(109, 111, 132, 0.4),
      400: Color.fromRGBO(109, 111, 132, 0.5),
      500: Color.fromRGBO(109, 111, 132, 0.6),
      600: Color.fromRGBO(109, 111, 132, 0.7),
      700: Color.fromRGBO(109, 111, 132, 0.8),
      800: Color.fromRGBO(109, 111, 132, 0.9),
      900: Color.fromRGBO(109, 111, 132, 1.0),
    },
  );
  static const MaterialColor whiteColor = MaterialColor(
    _whiteColor,
    <int, Color>{
      50: Color.fromRGBO(255, 255, 255, 0.1),
      100: Color.fromRGBO(255, 255, 255, 0.2),
      200: Color.fromRGBO(255, 255, 255, 0.3),
      300: Color.fromRGBO(255, 255, 255, 0.4),
      400: Color.fromRGBO(255, 255, 255, 0.5),
      500: Color.fromRGBO(255, 255, 255, 0.6),
      600: Color.fromRGBO(255, 255, 255, 0.7),
      700: Color.fromRGBO(255, 255, 255, 0.8),
      800: Color.fromRGBO(255, 255, 255, 0.9),
      900: Color.fromRGBO(255, 255, 255, 1.0),
    },
  );
  static const MaterialColor blackRatingColor = MaterialColor(
    _blackRatingColor,
    <int, Color>{
      50: Color.fromRGBO(43, 43, 43, 0.1),
      100: Color.fromRGBO(43, 43, 43, 0.2),
      200: Color.fromRGBO(43, 43, 43, 0.3),
      300: Color.fromRGBO(43, 43, 43, 0.4),
      400: Color.fromRGBO(43, 43, 43, 0.5),
      500: Color.fromRGBO(43, 43, 43, 0.6),
      600: Color.fromRGBO(43, 43, 43, 0.7),
      700: Color.fromRGBO(43, 43, 43, 0.8),
      800: Color.fromRGBO(43, 43, 43, 0.9),
      900: Color.fromRGBO(43, 43, 43, 1.0),
    },
  );
  static const MaterialColor greenColor = MaterialColor(
    _greenColor,
    <int, Color>{
      50: Color.fromRGBO(104, 188, 69, 0.1),
      100: Color.fromRGBO(104, 188, 69, 0.2),
      200: Color.fromRGBO(104, 188, 69, 0.3),
      300: Color.fromRGBO(104, 188, 69, 0.4),
      400: Color.fromRGBO(104, 188, 69, 0.5),
      500: Color.fromRGBO(104, 188, 69, 0.6),
      600: Color.fromRGBO(104, 188, 69, 0.7),
      700: Color.fromRGBO(104, 188, 69, 0.8),
      800: Color.fromRGBO(104, 188, 69, 0.9),
      900: Color.fromRGBO(104, 188, 69, 1.0),
    },
  );
  static const MaterialColor lightGreenColor = MaterialColor(
    _lightGreenColor,
    <int, Color>{
      50: Color.fromRGBO(114, 192, 81, 0.1),
      100: Color.fromRGBO(114, 192, 81, 0.2),
      200: Color.fromRGBO(114, 192, 81, 0.3),
      300: Color.fromRGBO(114, 192, 81, 0.4),
      400: Color.fromRGBO(114, 192, 81, 0.5),
      500: Color.fromRGBO(114, 192, 81, 0.6),
      600: Color.fromRGBO(114, 192, 81, 0.7),
      700: Color.fromRGBO(114, 192, 81, 0.8),
      800: Color.fromRGBO(114, 192, 81, 0.9),
      900: Color.fromRGBO(114, 192, 81, 1.0),
    },
  );
  static const MaterialColor nutritionColor = MaterialColor(
    _nutritionColor,
    <int, Color>{
      50: Color.fromRGBO(208, 231, 127, 0.1),
      100: Color.fromRGBO(208, 231, 127, 0.2),
      200: Color.fromRGBO(208, 231, 127, 0.3),
      300: Color.fromRGBO(208, 231, 127, 0.4),
      400: Color.fromRGBO(208, 231, 127, 0.5),
      500: Color.fromRGBO(208, 231, 127, 0.6),
      600: Color.fromRGBO(208, 231, 127, 0.7),
      700: Color.fromRGBO(208, 231, 127, 0.8),
      800: Color.fromRGBO(208, 231, 127, 0.9),
      900: Color.fromRGBO(208, 231, 127, 1.0),
      910: Color.fromRGBO(180, 220, 98, 1.0),
      920: Color.fromRGBO(148, 209, 72, 1.0),
      930: Color.fromRGBO(113, 198, 43, 1.0),
      940: Color.fromRGBO(57, 142, 61, 1.0),
      950: Color.fromRGBO(28, 71, 0, 1.0),
      955: Color.fromRGBO(74, 108, 47, 1.0),
      956: Color.fromRGBO(53, 158, 82, 1.0),
      960: Color.fromRGBO(241, 255, 211, 1.0),
      970: Color.fromRGBO(209, 243, 174, 1.0),
      971: Color.fromRGBO(233, 255, 155, 1.0),
      972: Color.fromRGBO(255, 255, 204, 1.0),
    },
  );
  static const MaterialColor newNutritionColor = MaterialColor(
    _newNutritionColor,
    <int, Color>{
      50: Color.fromRGBO(80, 188, 40, 0.1),
      100: Color.fromRGBO(80, 188, 40, 0.2),
      200: Color.fromRGBO(80, 188, 40, 0.3),
      300: Color.fromRGBO(80, 188, 40, 0.4),
      400: Color.fromRGBO(80, 188, 40, 0.5),
      500: Color.fromRGBO(80, 188, 40, 0.6),
      600: Color.fromRGBO(80, 188, 40, 0.7),
      700: Color.fromRGBO(80, 188, 40, 0.8),
      800: Color.fromRGBO(80, 188, 40, 0.9),
      900: Color.fromRGBO(80, 188, 40, 1.0),
      910: Color.fromRGBO(72, 170, 36, 1.0),
      920: Color.fromRGBO(52, 142, 0, 1.0),
      930: Color.fromRGBO(45, 114, 0, 1.0),
      940: Color.fromRGBO(35, 89, 0, 1.0),
      950: Color.fromRGBO(28, 71, 0, 1.0),
      960: Color.fromRGBO(241, 255, 211, 1.0),
      970: Color.fromRGBO(209, 243, 174, 1.0),
    },
  );
  static const MaterialColor exercisesColor = MaterialColor(
    _exercisesColor,
    <int, Color>{
      10: Color.fromRGBO(234, 182, 51, 1.0),
      20: Color.fromRGBO(240, 200, 102, 1.0),
      30: Color.fromRGBO(244, 218, 153, 1.0),
      40: Color.fromRGBO(255, 194, 0, 1.0),
      50: Color.fromRGBO(255, 230, 0, 0.1),
      100: Color.fromRGBO(255, 230, 0, 0.2),
      200: Color.fromRGBO(255, 230, 0, 0.3),
      300: Color.fromRGBO(255, 230, 0, 0.4),
      400: Color.fromRGBO(255, 230, 0, 0.5),
      500: Color.fromRGBO(255, 230, 0, 0.6),
      600: Color.fromRGBO(255, 230, 0, 0.7),
      700: Color.fromRGBO(255, 230, 0, 0.8),
      800: Color.fromRGBO(255, 230, 0, 0.9),
      900: Color.fromRGBO(255, 230, 0, 1.0),
      910: Color.fromRGBO(255, 194, 0, 1.0),
      920: Color.fromRGBO(229, 163, 0, 1.0),
      930: Color.fromRGBO(209, 144, 0, 1.0),
    },
  );
  static const MaterialColor exercisesHomeColor = MaterialColor(
    _exercisesHomeColor,
    <int, Color>{
      50: Color.fromRGBO(255, 194, 0, 0.1),
      100: Color.fromRGBO(255, 194, 0, 0.2),
      200: Color.fromRGBO(255, 194, 0, 0.3),
      300: Color.fromRGBO(255, 194, 0, 0.4),
      400: Color.fromRGBO(255, 194, 0, 0.5),
      500: Color.fromRGBO(255, 194, 0, 0.6),
      600: Color.fromRGBO(255, 194, 0, 0.7),
      700: Color.fromRGBO(255, 194, 0, 0.8),
      800: Color.fromRGBO(255, 194, 0, 0.9),
      900: Color.fromRGBO(255, 194, 0, 1.0),
    },
  );
  static const MaterialColor servicesColor = MaterialColor(
    _servicesColor,
    <int, Color>{
      50: Color.fromRGBO(255, 103, 0, 0.1),
      100: Color.fromRGBO(255, 103, 0, 0.2),
      200: Color.fromRGBO(255, 103, 0, 0.3),
      300: Color.fromRGBO(255, 103, 0, 0.4),
      400: Color.fromRGBO(255, 103, 0, 0.5),
      500: Color.fromRGBO(255, 103, 0, 0.6),
      600: Color.fromRGBO(255, 103, 0, 0.7),
      700: Color.fromRGBO(255, 103, 0, 0.8),
      800: Color.fromRGBO(255, 103, 0, 0.9),
      900: Color.fromRGBO(255, 103, 0, 1.0),
    },
  );
  static const MaterialColor specialistsColor = MaterialColor(
    _specialistsColor,
    <int, Color>{
      50: Color.fromRGBO(0, 130, 203, 0.1),
      100: Color.fromRGBO(0, 130, 203, 0.2),
      200: Color.fromRGBO(0, 130, 203, 0.3),
      300: Color.fromRGBO(0, 130, 203, 0.4),
      400: Color.fromRGBO(0, 130, 203, 0.5),
      500: Color.fromRGBO(0, 130, 203, 0.6),
      600: Color.fromRGBO(0, 130, 203, 0.7),
      700: Color.fromRGBO(0, 130, 203, 0.8),
      800: Color.fromRGBO(0, 130, 203, 0.9),
      900: Color.fromRGBO(0, 130, 203, 1.0),
    },
  );
  static const MaterialColor specialOffersColor = MaterialColor(
    _specialOffersColor,
    <int, Color>{
      50: Color.fromRGBO(160, 0, 0, 0.1),
      100: Color.fromRGBO(160, 0, 0, 0.2),
      200: Color.fromRGBO(160, 0, 0, 0.3),
      300: Color.fromRGBO(160, 0, 0, 0.4),
      400: Color.fromRGBO(160, 0, 0, 0.5),
      500: Color.fromRGBO(160, 0, 0, 0.6),
      600: Color.fromRGBO(160, 0, 0, 0.7),
      700: Color.fromRGBO(160, 0, 0, 0.8),
      800: Color.fromRGBO(160, 0, 0, 0.9),
      900: Color.fromRGBO(160, 0, 0, 1.0),
    },
  );
  static const MaterialColor greyColor = MaterialColor(
    _greyColor,
    <int, Color>{
      50: Color.fromRGBO(239, 239, 239, 0.1),
      100: Color.fromRGBO(239, 239, 239, 0.2),
      200: Color.fromRGBO(239, 239, 239, 0.3),
      300: Color.fromRGBO(239, 239, 239, 0.4),
      400: Color.fromRGBO(239, 239, 239, 0.5),
      500: Color.fromRGBO(239, 239, 239, 0.6),
      600: Color.fromRGBO(239, 239, 239, 0.7),
      700: Color.fromRGBO(239, 239, 239, 0.8),
      800: Color.fromRGBO(239, 239, 239, 0.9),
      900: Color.fromRGBO(239, 239, 239, 1.0),
    },
  );
  static const MaterialColor darkGreyColor = MaterialColor(
    _darkGreyColor,
    <int, Color>{
      50: Color.fromRGBO(221, 221, 221, 0.1),
      100: Color.fromRGBO(221, 221, 221, 0.2),
      200: Color.fromRGBO(221, 221, 221, 0.3),
      300: Color.fromRGBO(221, 221, 221, 0.4),
      400: Color.fromRGBO(221, 221, 221, 0.5),
      500: Color.fromRGBO(221, 221, 221, 0.6),
      600: Color.fromRGBO(221, 221, 221, 0.7),
      700: Color.fromRGBO(221, 221, 221, 0.8),
      800: Color.fromRGBO(221, 221, 221, 0.9),
      900: Color.fromRGBO(221, 221, 221, 1.0),
    },
  );
  static const MaterialColor redColor = MaterialColor(
    _redColor,
    <int, Color>{
      50: Color.fromRGBO(183, 21, 21, 0.1),
      100: Color.fromRGBO(183, 21, 21, 0.2),
      200: Color.fromRGBO(183, 21, 21, 0.3),
      300: Color.fromRGBO(183, 21, 21, 0.4),
      400: Color.fromRGBO(183, 21, 21, 0.5),
      500: Color.fromRGBO(183, 21, 21, 0.6),
      600: Color.fromRGBO(183, 21, 21, 0.7),
      700: Color.fromRGBO(183, 21, 21, 0.8),
      800: Color.fromRGBO(183, 21, 21, 0.9),
      900: Color.fromRGBO(183, 21, 21, 1.0),
    },
  );

  static const MaterialColor questionnaireColor = MaterialColor(
    _questionnaireColor,
    <int, Color>{
      50: Color.fromRGBO(38, 44, 50, 0.1),
      100: Color.fromRGBO(38, 44, 50, 0.2),
      200: Color.fromRGBO(38, 44, 50, 0.3),
      300: Color.fromRGBO(38, 44, 50, 0.4),
      400: Color.fromRGBO(38, 44, 50, 0.5),
      500: Color.fromRGBO(38, 44, 50, 0.6),
      600: Color.fromRGBO(38, 44, 50, 0.7),
      700: Color.fromRGBO(38, 44, 50, 0.8),
      800: Color.fromRGBO(38, 44, 50, 0.9),
      900: Color.fromRGBO(38, 44, 50, 1.0),
    },
  );

  static const MaterialColor btnGradient1Color = MaterialColor(
    _questionnaireColor,
    <int, Color>{
      50: Color.fromRGBO(23, 50, 224, 0.1),
      100: Color.fromRGBO(23, 50, 224, 0.2),
      200: Color.fromRGBO(23, 50, 224, 0.3),
      300: Color.fromRGBO(23, 50, 224, 0.4),
      400: Color.fromRGBO(23, 50, 224, 0.5),
      500: Color.fromRGBO(23, 50, 224, 0.6),
      600: Color.fromRGBO(23, 50, 224, 0.7),
      700: Color.fromRGBO(23, 50, 224, 0.8),
      800: Color.fromRGBO(23, 50, 224, 0.9),
      900: Color(_btnGradient1Color),
    },
  );
  static const MaterialColor btnGradient2Color = MaterialColor(
    _questionnaireColor,
    <int, Color>{
      50: Color.fromRGBO(87, 22, 193, 0.1),
      100: Color.fromRGBO(87, 22, 193, 0.2),
      200: Color.fromRGBO(87, 22, 193, 0.3),
      300: Color.fromRGBO(87, 22, 193, 0.4),
      400: Color.fromRGBO(87, 22, 193, 0.5),
      500: Color.fromRGBO(87, 22, 193, 0.6),
      600: Color.fromRGBO(87, 22, 193, 0.7),
      700: Color.fromRGBO(87, 22, 193, 0.8),
      800: Color.fromRGBO(87, 22, 193, 0.9),
      900: Color(_btnGradient2Color),
    },
  );
}


abstract final class AppColors {
  static const Color appBurgundyTheme = Color.fromRGBO(80, 50, 89, 1.0);
  static const Color appTheme = Color.fromRGBO(35, 92, 168, 1.0);
  static const Color appWhite = Colors.white;
  static const Color interestsBgColor = Color(0xff2E245A);
  static const Color appBlack = Color.fromRGBO(41, 20, 20, 1);
  static const Color appLightGray = Color.fromRGBO(125, 125, 125, 1);
  static const Color appTealColor = Color.fromRGBO(76, 141, 190, 1);
  static const Color appRedColor = Color.fromRGBO(213, 39, 82, 1.0);
  static const Color appCertBtnColor = Color.fromRGBO(225, 232, 225, 1.0);
  static const Color appLightMustardColor = Color.fromRGBO(108, 60, 141, 1);
  static const Color vipDarkPurpleColor = Color.fromRGBO(89, 29, 130, 1.0);
  static const Color appBorderColor = Color.fromRGBO(203, 199, 199, 1.0);
  static const Color appOrangeColor = Color.fromRGBO(240, 107, 40, 1.0);
  static const Color appBlueColor = Color.fromRGBO(10, 171, 204, 1.0);
  static const Color appUnselectedColor = Color.fromRGBO(220, 220, 220, 1.0);
  static const Color appUnselectedButtonColor = Color.fromRGBO(250, 250, 250, 1.0);
  static const Color vipBlackColor = Color.fromRGBO(13, 14, 14, 1.0);
  static const Color vipPurple = Color.fromRGBO(108, 60, 141, 1);
  static const Color vipWhite = Colors.white;
  static const Color vipGray = Color.fromRGBO(218, 218, 218, 1.0);
  static const Color vipLightPurple = Color.fromRGBO(126, 93, 150, 1.0);
  static const Color viplightGray = Color.fromRGBO(87, 87, 86, 1.0);
  static const Color appPinkColor = Color.fromRGBO(8, 12, 62, 1);
  static const Color defaultSegmentButton = Color.fromRGBO(36, 41, 51, 1);
  static const Color grayTxtColor = Color.fromRGBO(136, 143, 179, 1);
  static const Color accentBlack = Color.fromRGBO(10, 0, 69, 1);
  static const Color appBorderJSColor = Color.fromRGBO(191, 209, 227, 1.0);
  static const Color appGreenColor = Color.fromRGBO(80, 193, 78, 1);
  static const Color riyadhHomeComingColor = Colors.black;
  static const Color appRiyadhHomeComingTabColor = Color.fromRGBO(252, 55, 34, 1);
  static const Color riyadhHomeComingOrangeColor = Color.fromRGBO(255, 159, 44, 1);
  static const Color riyadhHomeComingGreenColor = Color.fromRGBO(91, 188, 111, 1);
  static const Color riyadhNewThemeColor = Color.fromRGBO(54, 59, 165, 1);
  static const Color riyadhNewOrangeColor = Color.fromRGBO(253, 97, 45, 1);
  static const Color riyadhDateColor = Color.fromRGBO(199, 47, 189, 1);
  static const Color riyadhBtnColor = Color.fromRGBO(212, 54, 84, 1);
  static const Color saudiFoundingDayNewThemeColor = Color.fromRGBO(107, 78, 70, 1);
  static const Color saudiFoundingDayBtnColor = Color.fromRGBO(233, 223, 207, 1);
  static const Color saudiFoundingDayApp = Color.fromRGBO(107, 78, 70, 1);
  static const Color saudiFoundingDayDisableBtnColor = Color.fromRGBO(128, 128, 128, 1);
  static const Color jeddahGreenColor = Color.fromRGBO(64, 202, 181, 1);
  static const Color jeddahDarkGreenColor = Color.fromRGBO(161, 193, 125, 1);
  static const Color jeddahBGGreenColor = Color.fromRGBO(42, 137, 136, 1);
  static const Color jeddahPinkColor = Color.fromRGBO(185, 28, 82, 1);
  static const Color jeddahDarkPinkColor = Color.fromRGBO(187, 0, 82, 1);
  static const Color jeddahMagentaColor = Color.fromRGBO(177, 96, 190, 1);
  static const Color jeddahBlueColor = Color.fromRGBO(60, 194, 243, 1);
  static const Color jeddahOrangeColor = Color.fromRGBO(252, 150, 53, 1);
  static const Color jeddahNavyColor = Color.fromRGBO(0, 108, 172, 1);
  static const Color jeddahPurpleColor = Color.fromRGBO(86, 48, 92, 1);
}
