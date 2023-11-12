import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../styles/font_styles.dart';
import '../styles/sizes.dart';

// class CustomText extends Container {
//   CustomText({
//     required BuildContext context,
//     required String text,
//     Key? key,
//     double? fontSize,
//     Color? color,
//     FontWeight? fontWeight,
//     double? width,
//     bool underline = false,
//     strutStyle,
//     TextAlign? textAlign,
//     TextDirection? textDirection,
//     Locale? locale,
//     softWrap,
//     overflow,
//     textScaleFactor,
//     maxLines,
//     semanticsLabel,
//     textWidthBasis,
//     double? height,
//     textHeightBehavior,
//     EdgeInsetsGeometry? margin,
//     EdgeInsetsGeometry? padding,
//     Alignment? alignment,
//   }) : super(
//           key: key,
//           margin: margin,
//           padding: padding,
//           alignment: alignment,
//           width: width,
//           child: Text(
//             text,
//             // enableInteractiveSelection: true,
//             // selectionControls: MaterialTextSelectionControls(),
//             style: TextStyle(
//               color: color,
//               height: height,
//               fontSize: fontSize,
//               fontWeight: fontWeight,
//               decoration: underline ? TextDecoration.underline : null,
//               // fontFamily: FontStyles.fontFamily(),
//             ),
//             strutStyle: strutStyle,
//             textAlign: textAlign,
//             textDirection: textDirection,
//             locale: locale,
//             softWrap: softWrap,
//             overflow: overflow,
//             textScaleFactor: textScaleFactor,
//             maxLines: maxLines,
//             semanticsLabel: semanticsLabel,
//             textWidthBasis: textWidthBasis,
//             textHeightBehavior: textHeightBehavior,
//           ),
//         );
//
//   CustomText.h0({
//     required BuildContext context,
//     required String text,
//     Key? key,
//     Color? color,
//     FontWeight? fontWeight,
//     bool? underline,
//     TextAlign? textAlign,
//     EdgeInsetsGeometry? margin,
//     EdgeInsetsGeometry? padding,
//     double? height,
//     int? maxLines,
//     Alignment? alignment,
//     double? fontSize,
//     softWrap,
//     overflow,
//   }) : this(
//           context: context,
//           text: text,
//           key: key,
//           maxLines: maxLines,
//           fontSize: fontSize ?? Sizes.fontSizes()['h0'],
//           padding: padding,
//           margin: margin,
//           height: height,
//           color: color ?? Theme.of(context).textTheme.displayLarge?.color,
//           fontWeight: fontWeight ?? FontStyles.fontWeightBlack,
//           textAlign: textAlign,
//           alignment: alignment,
//           softWrap:  softWrap,
//           overflow: overflow,
//         );
//
//   CustomText.h1({
//     required BuildContext context,
//     required String text,
//     Key? key,
//     Color? color,
//     FontWeight? fontWeight,
//     bool? underline,
//     TextAlign? textAlign,
//     EdgeInsetsGeometry? margin,
//     EdgeInsetsGeometry? padding,
//     double? height,
//     int? maxLines,
//     Alignment? alignment,
//     softWrap,
//     overflow,
//   }) : this(
//           context: context,
//           text: text,
//           key: key,
//           maxLines: maxLines,
//           fontSize: Sizes.fontSizes()['h1'],
//           padding: padding,
//           margin: margin,
//           height: height,
//           color: color ?? Theme.of(context).textTheme.displayLarge?.color,
//           fontWeight: fontWeight ?? FontStyles.fontWeightBlack,
//           textAlign: textAlign,
//           alignment: alignment,
//           softWrap:  softWrap,
//           overflow: overflow,
//         );
//
//   CustomText.h2({
//     required BuildContext context,
//     required String text,
//     Key? key,
//     Color? color,
//     FontWeight? fontWeight,
//     TextAlign? textAlign,
//     EdgeInsetsGeometry? margin,
//     EdgeInsetsGeometry? padding,
//     double? height,
//     int? maxLines,
//     dynamic overflow,
//     Alignment? alignment,
//   }) : this(
//           context: context,
//           text: text,
//           key: key,
//           padding: padding,
//           margin: margin,
//           fontSize: Sizes.fontSizes()['h2'],
//           color: color ?? Theme.of(context).textTheme.displayMedium?.color,
//           fontWeight: fontWeight ?? FontStyles.fontWeightBlack,
//           textAlign: textAlign,
//           height: height,
//           maxLines: maxLines,
//           overflow: overflow,
//           alignment: alignment,
//         );
//
//   CustomText.h3({
//     required BuildContext context,
//     required String text,
//     Key? key,
//     Color? color,
//     FontWeight? fontWeight,
//     TextAlign? textAlign,
//     EdgeInsetsGeometry? margin,
//     EdgeInsetsGeometry? padding,
//     double? height,
//     bool underline = false,
//     dynamic overflow,
//     int? maxLines,
//     Alignment? alignment,
//   }) : this(
//           context: context,
//           text: text,
//           key: key,
//           maxLines: maxLines,
//           fontSize: Sizes.fontSizes()['h3'],
//           padding: padding,
//           margin: margin,
//           height: height,
//           color: color ?? Theme.of(context).textTheme.displaySmall?.color,
//           fontWeight: fontWeight,
//           textAlign: textAlign,
//           underline: underline,
//           overflow: overflow,
//           alignment: alignment,
//         );
//
//   CustomText.h4({
//     required BuildContext context,
//     required String text,
//     Key? key,
//     Color? color,
//     FontWeight? fontWeight,
//     TextAlign? textAlign,
//     EdgeInsetsGeometry? margin,
//     EdgeInsetsGeometry? padding,
//     double? height,
//     bool underline = false,
//     dynamic overflow,
//     int? maxLines,
//     Alignment? alignment,
//   }) : this(
//           context: context,
//           text: text,
//           key: key,
//           padding: padding,
//           margin: margin,
//           fontSize: Sizes.fontSizes()['h4'],
//           color: color ?? Theme.of(context).textTheme.headlineMedium?.color,
//           fontWeight: fontWeight,
//           height: height,
//           textAlign: textAlign,
//           underline: underline,
//           maxLines: maxLines,
//           overflow: overflow,
//           alignment: alignment,
//         );
//
//   CustomText.h5({
//     required BuildContext context,
//     required String text,
//     Key? key,
//     Color? color,
//     FontWeight? fontWeight,
//     TextAlign? textAlign,
//     EdgeInsetsGeometry? margin,
//     EdgeInsetsGeometry? padding,
//     double? height,
//     dynamic overflow,
//     int? maxLines,
//     Alignment? alignment,
//     double? size,
//   }) : this(
//           context: context,
//           text: text,
//           key: key,
//           maxLines: maxLines,
//           fontSize: size ?? Sizes.fontSizes()['h5'],
//           padding: padding,
//           margin: margin,
//           height: height,
//           color: color ?? Theme.of(context).textTheme.headlineSmall?.color,
//           fontWeight: fontWeight,
//           overflow: overflow,
//           textAlign: textAlign,
//           alignment: alignment,
//         );
//
//   CustomText.h6({
//     required BuildContext context,
//     required String text,
//     Key? key,
//     Color? color,
//     FontWeight? fontWeight,
//     TextAlign? textAlign,
//     dynamic overflow,
//     EdgeInsetsGeometry? margin,
//     EdgeInsetsGeometry? padding,
//     double? height,
//     int? maxLines,
//     Alignment? alignment,
//     double? fontSize,
//   }) : this(
//           context: context,
//           text: text,
//           key: key,
//           maxLines: maxLines,
//           fontSize: fontSize ?? Sizes.fontSizes()['h6'],
//           padding: padding,
//           margin: margin,
//           height: height,
//           overflow: overflow,
//           color: color ?? Theme.of(context).textTheme.titleLarge?.color,
//           fontWeight: fontWeight,
//           textAlign: textAlign,
//           alignment: alignment,
//         );
//
//   CustomText.h7({
//     required BuildContext context,
//     required String text,
//     Key? key,
//     Color? color,
//     FontWeight? fontWeight,
//     TextAlign? textAlign,
//     dynamic overflow,
//     EdgeInsetsGeometry? margin,
//     EdgeInsetsGeometry? padding,
//     double? height,
//     int? maxLines,
//     Alignment? alignment,
//     double? fontSize,
//   }) : this(
//           context: context,
//           text: text,
//           key: key,
//           maxLines: maxLines,
//           fontSize: fontSize ?? Sizes.fontSizes()['h7'],
//           padding: padding,
//           margin: margin,
//           height: height,
//           overflow: overflow,
//           color: color ?? Theme.of(context).textTheme.titleLarge?.color,
//           fontWeight: fontWeight,
//           textAlign: textAlign,
//           alignment: alignment,
//         );
//   CustomText.h8({
//     required BuildContext context,
//     required String text,
//     Key? key,
//     Color? color,
//     FontWeight? fontWeight,
//     TextAlign? textAlign,
//     dynamic overflow,
//     EdgeInsetsGeometry? margin,
//     EdgeInsetsGeometry? padding,
//     double? height,
//     int? maxLines,
//     Alignment? alignment,
//     double? fontSize,
//   }) : this(
//           context: context,
//           text: text,
//           key: key,
//           maxLines: maxLines,
//           fontSize: fontSize ?? Sizes.fontSizes()['h8'],
//           padding: padding,
//           margin: margin,
//           height: height,
//           overflow: overflow,
//           color: color ?? Theme.of(context).textTheme.titleLarge?.color,
//           fontWeight: fontWeight,
//           textAlign: textAlign,
//           alignment: alignment,
//         );
//   CustomText.h9({
//     required BuildContext context,
//     required String text,
//     Key? key,
//     Color? color,
//     FontWeight? fontWeight,
//     TextAlign? textAlign,
//     dynamic overflow,
//     EdgeInsetsGeometry? margin,
//     EdgeInsetsGeometry? padding,
//     double? height,
//     int? maxLines,
//     Alignment? alignment,
//     double? fontSize,
//   }) : this(
//           context: context,
//           text: text,
//           key: key,
//           maxLines: maxLines,
//           fontSize: fontSize ?? Sizes.fontSizes()['h9'],
//           padding: padding,
//           margin: margin,
//           height: height,
//           overflow: overflow,
//           color: color ?? Theme.of(context).textTheme.titleLarge?.color,
//           fontWeight: fontWeight,
//           textAlign: textAlign,
//           alignment: alignment,
//         );
// }

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double? width;
  final double? height;
  final bool? underline;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;

  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.width,
    this.height,
    this.underline,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.padding,
    this.margin,
    this.alignment,
  });

  factory CustomText.h0({
    required String text,
    Color? color = Colors.black,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    double? width,
    double? height,
    bool? underline,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
  }) {
    return CustomText(
      text: text,
      color: color,
      fontSize: fontSize ?? Sizes.fontSizes()['h0'],
      fontWeight: fontWeight ?? FontStyles.fontWeightBlack,
      fontFamily: fontFamily,
      width: width,
      height: height,
      underline: underline,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      padding: padding,
      margin: margin,
      alignment: alignment,
    );
  }

  factory CustomText.h1({
    required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    double? width,
    double? height,
    bool? underline,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
  }) {
    return CustomText(
      text: text,
      color: color,
      fontSize: fontSize ?? Sizes.fontSizes()['h1'],
      fontWeight: fontWeight ?? FontStyles.fontWeightBlack,
      fontFamily: fontFamily,
      width: width,
      height: height,
      underline: underline,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      padding: padding,
      margin: margin,
      alignment: alignment,
    );
  }

  factory CustomText.h2({
    required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    double? width,
    double? height,
    bool? underline,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
  }) {
    return CustomText(
      text: text,
      color: color,
      fontSize: fontSize ?? Sizes.fontSizes()['h2'],
      fontWeight: fontWeight ?? FontStyles.fontWeightBlack,
      fontFamily: fontFamily,
      width: width,
      height: height,
      underline: underline,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      padding: padding,
      margin: margin,
      alignment: alignment,
    );
  }

  factory CustomText.h3({
    required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    double? width,
    double? height,
    bool? underline,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
  }) {
    return CustomText(
      text: text,
      color: color,
      fontSize: fontSize ?? Sizes.fontSizes()['h3'],
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      width: width,
      height: height,
      underline: underline,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      padding: padding,
      margin: margin,
      alignment: alignment,
    );
  }

  factory CustomText.h4({
    required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    double? width,
    double? height,
    bool? underline,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
  }) {
    return CustomText(
      text: text,
      color: color,
      fontSize: fontSize ?? Sizes.fontSizes()['h4'],
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      width: width,
      height: height,
      underline: underline,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      padding: padding,
      margin: margin,
      alignment: alignment,
    );
  }

  factory CustomText.h5({
    required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    double? width,
    double? height,
    bool? underline,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
  }) {
    return CustomText(
      text: text,
      color: color,
      fontSize: fontSize ?? Sizes.fontSizes()['h5'],
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      width: width,
      height: height,
      underline: underline,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      padding: padding,
      margin: margin,
      alignment: alignment,
    );
  }

  factory CustomText.h6({
    required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    double? width,
    double? height,
    bool? underline,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
  }) {
    return CustomText(
      text: text,
      color: color,
      fontSize: fontSize ?? Sizes.fontSizes()['h6'],
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      width: width,
      height: height,
      underline: underline,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      padding: padding,
      margin: margin,
      alignment: alignment,
    );
  }

  factory CustomText.h7({
    required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    double? width,
    double? height,
    bool? underline,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
  }) {
    return CustomText(
      text: text,
      color: color,
      fontSize: fontSize ?? Sizes.fontSizes()['h7'],
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      width: width,
      height: height,
      underline: underline,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      padding: padding,
      margin: margin,
      alignment: alignment,
    );
  }


  factory CustomText.h8({
    required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    double? width,
    double? height,
    bool? underline,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
  }) {
    return CustomText(
      text: text,
      color: color,
      fontSize: fontSize ?? Sizes.fontSizes()['h8'],
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      width: width,
      height: height,
      underline: underline,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      padding: padding,
      margin: margin,
      alignment: alignment,
    );
  }

  factory CustomText.h9({
    required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    double? width,
    double? height,
    bool? underline,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
  }) {
    return CustomText(
      text: text,
      color: color,
      fontSize: fontSize ?? Sizes.fontSizes()['h9'],
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      width: width,
      height: height,
      underline: underline,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      padding: padding,
      margin: margin,
      alignment: alignment,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      alignment: alignment,
      width: width,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          height: height,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: underline == true ? TextDecoration.underline : null,
          fontFamily: fontFamily,
        ),
        strutStyle: strutStyle,
        textAlign: textAlign,
        // textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
      ),
    );
  }

  CustomText copyWith({
    String? text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    double? width,
    double? height,
    bool? underline,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
  }) {
    return CustomText(
      text: text ?? this.text,
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      fontFamily: fontFamily ?? this.fontFamily,
      width: width ?? this.width,
      height: height ?? this.height,
      underline: underline ?? this.underline,
      strutStyle: strutStyle ?? this.strutStyle,
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection ?? this.textDirection,
      locale: locale ?? this.locale,
      softWrap: softWrap ?? this.softWrap,
      overflow: overflow ?? this.overflow,
      textScaleFactor: textScaleFactor ?? this.textScaleFactor,
      maxLines: maxLines ?? this.maxLines,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
      padding: padding ?? this.padding,
      margin: margin ?? this.margin,
      alignment: alignment ?? this.alignment,
    );
  }
}

class LinkTextView extends StatelessWidget {
  final String text;
  final VoidCallback expandToggle;

  const LinkTextView({
    Key? key,
    required this.text,
    required this.expandToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: expandToggle,
      child: SelectableText.rich(
        _buildTextSpan(text, context),
        textAlign: TextAlign.center,
        onTap: () {},
        scrollPhysics: const NeverScrollableScrollPhysics(),
        enableInteractiveSelection: true,
        showCursor: false,
        cursorWidth: 1.0,
        cursorColor: Colors.blue,
      ),
    );
  }

  TextSpan _buildTextSpan(String text, BuildContext context) {
    final List<String> words = text.split(' ');
    final List<TextSpan> spans = [];

    for (int i = 0; i < words.length; i++) {
      final String word = words[i];
      final TextSpan span = TextSpan(
        text: '$word ',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              decoration: _isLink(word) ? TextDecoration.underline : TextDecoration.none,
              color: _isLink(word) ? Colors.blue : null,
            ),
        recognizer: _isLink(word) != true ? null : TapGestureRecognizer()
          ?..onTap = expandToggle,
      );
      spans.add(span);
    }

    return TextSpan(children: spans);
  }

  bool _isLink(String word) {
    final Uri? uri = Uri.tryParse(word);
    return (uri != null && uri.scheme.isNotEmpty && uri.host.isNotEmpty);
  }
}

class CustomRichText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final List<CustomRichTextSpan> children;

  const CustomRichText({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontFamily: AppFonts.elMessiri.value
        ),
        children: children.map((span) => span.toTextSpan(context)).toList(),
      ),
    );
  }
}

class CustomRichTextSpan {
  final String text;
  final TextStyle style;
  final VoidCallback? onTap;

  const CustomRichTextSpan({
    required this.text,
    required this.style,
    this.onTap,
  });

  TextSpan toTextSpan(BuildContext context) {
    if (onTap != null) {
      return TextSpan(
        text: text,
        style: style.copyWith(decoration: TextDecoration.underline),
        recognizer: TapGestureRecognizer()..onTap = onTap,
      );
    }
    return TextSpan(text: text, style: style);
  }
}
