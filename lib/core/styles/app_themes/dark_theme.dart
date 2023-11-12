import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_colors.dart';

class DarkTheme {
  static final darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.darkThemeScaffoldBGColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColor.darkThemeStatusBarColor,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    ),
    primaryColor: AppColor.darkThemeMajorBGColor,
    scaffoldBackgroundColor: AppColor.darkThemeScaffoldBGColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColor.darkThemePrimary,
      secondary: AppColor.accentColor,
    ),
    iconTheme: const IconThemeData(color: AppColor.darkThemeIconColor),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColor.darkThemePrimary,
      disabledColor: AppColor.grey,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: AppColor.darkThemeBigTextColor,
      ),
      headline2: TextStyle(
        color: AppColor.darkThemeBigTextColor,
      ),
      headline3: TextStyle(
        color: AppColor.darkThemeNormalTextColor,
      ),
      headline4: TextStyle(
        color: AppColor.darkThemeNormalTextColor,
      ),
      headline5: TextStyle(
        color: AppColor.darkThemeSmallTextColor,
      ),
      headline6: TextStyle(
        color: AppColor.darkThemeSmallTextColor,
      ),
      subtitle1: TextStyle(
        color: AppColor.darkThemeTextFieldTextColor,
      ),
    ),
    hintColor: AppColor.darkThemeTextFieldHintColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.darkThemeTextFieldCursorColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColor.darkThemeTextFieldFillColor,
      prefixIconColor: AppColor.darkThemeTextFieldBorderColor,
      suffixIconColor: AppColor.darkThemeTextFieldBorderColor,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.darkThemeTextFieldBorderColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.darkThemeTextFieldBorderColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.darkThemeTextFieldFocusedBorderColor,
          width: 1.5,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.darkThemeTextFieldErrorBorderColor,
        ),
      ),
      errorStyle: TextStyle(
        color: AppColor.darkThemeTextFieldValidationColor,
      ),
    ),
  );
}
