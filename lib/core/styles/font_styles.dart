import 'sizes.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class FontStyles {
  static fontFamily() => FontFamily.elMessiri;

  static const fontWeightBlack = FontWeight.w900;
  static const fontWeightExtraBold = FontWeight.w800;
  static const fontWeightBold = FontWeight.bold;
  static const fontWeightSemiBold = FontWeight.w600;
  static const fontWeightMedium = FontWeight.w500;
  static const fontWeightNormal = FontWeight.normal;
  static const fontWeightLight = FontWeight.w300;
  static const fontWeightExtraLight = FontWeight.w200;
  static const fontWeightThin = FontWeight.w100;
  static const fontStyleNormal = FontStyle.normal;

  static mapSearchBarFontStyle(BuildContext context) => TextStyle(
        fontSize: Sizes.fontSizes()['h4'],
        color: Theme.of(context).textTheme.titleMedium!.color,
        fontFamily: fontFamily(),
        fontWeight: fontWeightNormal,
        fontStyle: fontStyleNormal,
      );
}

class FontFamily {
  // static String fontFamily = GoogleFonts.roboto().fontFamily!;
  static String gilroy = 'Gilroy';
  static String elMessiri = 'ElMessiri';
  static String neoSans = 'NeoSans';
  static String somar = 'Somar';
  static String poppins = 'Poppins';
  static String fasthand = 'Fasthand';
}

class AppFontWeight {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight cairoBlack = FontWeight.w900;
}

class AppFontSize {
  static const double s11 = 11.0;
  static const double s12 = 12.0;
  static const double s13 = 13.0;
  static const double s14 = 14.0;
  static const double s15 = 15.0;
  static const double s16 = 16.0;
  static const double s17 = 17.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s30 = 30.0;
  static const double s22 = 22.0;
}

TextStyle _getTextStyle({
  required double fontSize,
  required String fontFamily,
  required FontWeight fontWeight,
  required Color color,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getRegularStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: AppFonts.gilroy.value,
    fontWeight: AppFontWeight.regular,
    color: color,
  );
}

TextStyle getLightStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: AppFonts.poppins.value,
    fontWeight: AppFontWeight.light,
    color: color,
  );
}

TextStyle getBoldStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: AppFonts.fasthand.value,
    fontWeight: AppFontWeight.bold,
    color: color,
  );
}

TextStyle getSemiBoldStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: AppFonts.elMessiri.value,
    fontWeight: AppFontWeight.semiBold,
    color: color,
  );
}

TextStyle getMediumStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: AppFonts.poppins.value,
    fontWeight: AppFontWeight.medium,
    color: color,
  );
}

class AppStyle {
  static TextStyle mediumStyle({double fontSize = AppFontSize.s12, required Color color}) {
    return _getTextStyle(
      fontSize: fontSize,
      fontFamily: AppFonts.neoSans.value,
      fontWeight: AppFontWeight.medium,
      color: color,
    );
  }

  static TextStyle semiBoldStyle({double fontSize = AppFontSize.s12, required Color color}) {
    return _getTextStyle(
      fontSize: fontSize,
      fontFamily: AppFonts.neoSans.value,
      fontWeight: AppFontWeight.semiBold,
      color: color,
    );
  }

  static TextStyle boldStyle({double fontSize = AppFontSize.s12, required Color color}) {
    return _getTextStyle(
      fontSize: fontSize,
      fontFamily: AppFonts.elMessiri.value,
      fontWeight: AppFontWeight.bold,
      color: color,
    );
  }

  static TextStyle lightStyle({double fontSize = AppFontSize.s12, Color? color}) {
    return _getTextStyle(
      fontSize: fontSize,
      fontFamily: AppFonts.elMessiri.value,
      fontWeight: AppFontWeight.light,
      color: color ?? AppColor.grey2,
    );
  }

  static TextStyle regularStyle({double fontSize = AppFontSize.s12, required Color color}) {
    return _getTextStyle(
      fontSize: fontSize,
      fontFamily: AppFonts.elMessiri.value,
      fontWeight: AppFontWeight.regular,
      color: color,
    );
  }

  static TextStyle appBarStyle = TextStyle(
    fontSize: 20.0,
    color: Colors.white,
    fontFamily: FontFamily.neoSans,
  );

  static TextStyle unSelectedStyle = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    color: AppColor.whiteColor,
    fontFamily: AppFonts.elMessiri.value,
  );

  static TextStyle selectedStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: AppColor.nutritionColor[940],
    fontFamily: AppFonts.elMessiri.value,
  );

  static TextStyle titleStyle = TextStyle(
    color: Colors.white,
    fontSize: 25.0,
    fontWeight: FontWeight.w500,
    fontFamily: AppFonts.neoSans.value,
  );

  static TextStyle subTitleStyle = TextStyle(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    fontFamily: AppFonts.neoSans.value,
  );
}

/// App font

enum AppFonts {
  gilroy('Gilroy'),
  elMessiri('ElMessiri'),
  neoSans('NeoSans'),
  somar('somar'),
  poppins('Poppins'),
  fasthand('Fasthand');

  final String value;

  const AppFonts(this.value);
}

extension AppFontsExtension on AppFonts {
  TextStyle textStyle(double fontSize, BuildContext context) {
    if (MediaQuery.sizeOf(context).shortestSide >= 600) {
      return TextStyle(
        fontFamily: _getFontFamily(),
        fontSize: fontSize + 8,
      );
    } else {
      return TextStyle(
        fontFamily: _getFontFamily(),
        fontSize: fontSize,
      );
    }
  }

  TextStyle defaultTextStyle(BuildContext context) {
    if (MediaQuery.sizeOf(context).shortestSide >= 600) {
      return TextStyle(
        fontFamily: _getFontFamily(),
        fontSize: 20.0,
      );
    } else {
      return TextStyle(
        fontFamily: _getFontFamily(),
        fontSize: 12.0,
      );
    }
  }

  String _getFontFamily() {
    switch (this) {
      case AppFonts.gilroy:
        return 'Gilroy';
      case AppFonts.elMessiri:
        return 'ElMessiri';
      case AppFonts.neoSans:
        return 'NeoSans';
      case AppFonts.fasthand:
        return 'Fasthand';
      case AppFonts.somar:
        return 'somar';
      case AppFonts.poppins:
        return 'Poppins';
      default:
        return 'ElMessiri';
    }
  }
}
