import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_colors.dart';

class LightTheme {
  static final lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.lightThemeScaffoldBGColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        //For Android
        statusBarColor: AppColor.lightThemeStatusBarColor,
        // For apps with a dark background:
        // For Android (light icons)
        statusBarIconBrightness: Brightness.dark,
        // For iOS (light icons)
        statusBarBrightness: Brightness.light,
      ),
    ),
    scaffoldBackgroundColor: AppColor.lightThemeScaffoldBGColor,
    primaryColor: AppColor.lightThemeMajorBGColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColor.lightThemePrimary,
      secondary: AppColor.accentColor,
    ),
    iconTheme: const IconThemeData(color: AppColor.lightThemeIconColor),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColor.lightThemePrimary,
      disabledColor: AppColor.grey,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: AppColor.lightThemeBigTextColor,
      ),
      headline2: TextStyle(
        color: AppColor.lightThemeBigTextColor,
      ),
      headline3: TextStyle(
        color: AppColor.lightThemeNormalTextColor,
      ),
      headline4: TextStyle(
        color: AppColor.lightThemeNormalTextColor,
      ),
      headline5: TextStyle(
        color: AppColor.lightThemeSmallTextColor,
      ),
      headline6: TextStyle(
        color: AppColor.lightThemeSmallTextColor,
      ),
      subtitle1: TextStyle(
        color: AppColor.lightThemeTextFieldTextColor,
      ),
    ),
    hintColor: AppColor.lightThemeTextFieldHintColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.lightThemeTextFieldCursorColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColor.lightThemeTextFieldFillColor,
      prefixIconColor: AppColor.lightThemeTextFieldBorderColor,
      suffixIconColor: AppColor.lightThemeTextFieldBorderColor,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.lightThemeTextFieldBorderColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.lightThemeTextFieldBorderColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.lightThemeTextFieldFocusedBorderColor,
          width: 1.5,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.lightThemeTextFieldErrorBorderColor,
        ),
      ),
      errorStyle: TextStyle(
        color: AppColor.lightThemeTextFieldValidationColor,
      ),
    ),
  );
}
