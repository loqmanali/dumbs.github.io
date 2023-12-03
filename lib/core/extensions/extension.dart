
import 'package:dumbs/core/widgets/coustom_sized_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import '../helpers/const.dart';
import '../locale/app_localizations.dart';
import '../styles/app_colors.dart';
import '../styles/app_strings.dart';
import '../widgets/alerts.dart';
import '../widgets/custom_text.dart';

const String kEmpty = '';
const int kZero = 0;

// extension on String
extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return kEmpty;
    } else {
      return this!;
    }
  }
}

// extension on Integer
extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return kZero;
    } else {
      return this!;
    }
  }
}

// extension on Num
extension NonNullNum on num? {
  num orZero() {
    if (this == null) {
      return kZero;
    } else {
      return this!;
    }
  }
}

extension ArabicNumber on String {
  String arabicNumbers({required String input}) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(english[i], arabic[i]);
    }
    return input;
  }

  String get arabicNumber => arabicNumbers(input: this);

  String englishNumbers({required String input}) {
    const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

    for (int i = 0; i < arabic.length; i++) {
      input = input.replaceAll(arabic[i], english[i]);
    }
    return input;
  }


  String get englishNumber => englishNumbers(input: this);

  String get switchNumbers => appLanguage == AppStrings.ar ? arabicNumber : englishNumber;
}

extension ApplyHtml on String {
  // Widget applyHtml(
  //   String text, {
  //   Color? color,
  //   double? pFontSize,
  //   double? fontSizeStar,
  //   double? fontSizeH456,
  //   double? fontSizeH123,
  //   double? fontSizeP,
  // }) {
  //   return Html(
  //     data: this,
  //     style: {
  //       "*": Style(
  //         padding: const EdgeInsets.all(0.0),
  //         color: color ?? Colors.white,
  //         fontSize: FontSize(fontSizeStar ?? 16.0),
  //         display: Display.INLINE_BLOCK,
  //         width: 100.0,
  //         textAlign: TextAlign.start,
  //       ),
  //       "h4,h5,h6": Style(
  //         fontSize: FontSize(fontSizeH456 ?? 18.0),
  //       ),
  //       "h1,h2,h3": Style(
  //         fontSize: FontSize.xLarge,
  //       ),
  //       "br": Style(
  //         height: 0.0,
  //       ),
  //       "p": Style(
  //         fontSize: FontSize(fontSizeP ?? 16.0),
  //       )
  //     },
  //   );
  // }
}

extension StringExtension on String {
  ///Returns first letter of the string as Caps eg -> Flutter
  String toFirstLetterUpperCase() => length > 1
      ? "${this[0].toUpperCase()}${substring(1).toLowerCase()}"
      : this;

  ///Returns first letter of the string as Caps eg -> Flutter
  String get toFirstLU => toFirstLetterUpperCase();

  /// Returns a String without white space at all
  /// "hello world" // helloworld
  String removeAllWhiteSpace() => replaceAll(RegExp(r"\s+\b|\b\s"), "");

  /// Returns true if s is neither null, empty nor is solely made of whitespace characters.
  bool get isNotBlank => trim().isNotEmpty;

  ///
  /// Replaces chars of the given String [s] with [replace].
  ///
  /// The default value of [replace] is *.
  /// [begin] determines the start of the 'replacing'. If [begin] is null, it starts from index 0.
  /// [end] defines the end of the 'replacing'. If [end] is null, it ends at [s] length divided by 2.
  /// If [s] is empty or consists of only 1 char, the method returns null.
  ///
  /// Example :
  /// 1234567890 => *****67890
  /// 1234567890 with begin 2 and end 6 => 12****7890
  /// 1234567890 with begin 1 => 1****67890
  ///
  String? hidePartial({int begin = 0, int? end, String replace = '*'}) {
    final buffer = StringBuffer();
    if (length <= 1) {
      return null;
    }
    if (end == null) {
      end = (length / 2).round();
    } else {
      if (end > length) {
        end = length;
      }
    }
    for (var i = 0; i < length; i++) {
      if (i >= end) {
        buffer.write(String.fromCharCode(runes.elementAt(i)));
        continue;
      }
      if (i >= begin) {
        buffer.write(replace);
        continue;
      }
      buffer.write(String.fromCharCode(runes.elementAt(i)));
    }
    return buffer.toString();
  }

  ///Capitalize all words inside a string
  String allWordsCapitilize() {
    return toLowerCase().split(' ').map((word) {
      final String leftText =
          (word.length > 1) ? word.substring(1, word.length) : '';
      return word[0].toUpperCase() + leftText;
    }).join(' ');
  }

  /// firstLetter
  getFirstLetter(String word) => word[0].toUpperCase();
  get firstLetter => getFirstLetter(this);
}

// extension on Translate
extension AppLocalizationsString on String {
  String get tr {
    return AppLocalizations.instance?.translate(toString()) ?? toString();
  }
}

extension DateTimeString on String {
  String get toDateTime {
    final date = DateFormat.yMMMEd().format(parseDate(this));
    final time = DateFormat.Hm().format(parseTime(this));

    return '$date $time';
  }

  String get toDate {
    final date = DateFormat.MMMEd().format(parseDate(this));
    return date;
  }

  /// return format like this 2023-08-31
  String get toDateYMD {
    final date = DateFormat.yMd().format(parseDate(this));
    return date;
  }

  /// 2023-09-17T12:52:21.341Z to 2023-09-17 12:52:21
  DateTime parseTimeDate(String s) {
    DateTime parsedDate = DateTime.parse(s);
    String formattedDate = "${parsedDate.year}-${parsedDate.month.toString().padLeft(2, '0')}-${parsedDate.day.toString().padLeft(2, '0')} ${parsedDate.hour.toString().padLeft(2, '0')}:${parsedDate.minute.toString().padLeft(2, '0')}";
    return DateTime.parse(formattedDate);
  }

  String get toTimeDate {
    final value = parseTimeDate(this);
    final time = DateFormat.Hms().format(value);
    final date = toDateYMD;
    return '$date \n$time';
  }

  String get toDateMonth {
    final date = DateFormat.MMM().format(parseDate(this));
    return date;
  }

  String get switchToDate => appLanguage == AppStrings.ar ? toDateAr : toDate;

  String get toDateAr {
    final date = DateFormat.MMMEd("ar_AE");
    return date.format(parseDate(this));
  }

  String get toTime {
    final time = DateFormat.Hm().format(parseTime(this));
    return time;
  }

  String get toTimeAr {
    final time = DateFormat.Hm("ar_AE");
    return time.format(parseTime(this));
  }

  String get switchToTime => appLanguage == AppStrings.ar ? toTimeAr : toTime;

  DateTime parseTime(String s) {
    final time = DateFormat('HH:mm').parse(s);
    return time;
  }

  DateTime parseDate(String s) {
    final date = DateFormat('yyyy-MM-dd').parse(s);
    return date;
  }

  String get removeBrackets {
    return toString().replaceAll('(', '').replaceAll(')', '');
  }
}

extension DateTimeExtension on DateTime {
  String toDateString() {
    return '$year-$month-$day';
  }

  String toDateTime(DateTime dateTime) {
    final date = DateFormat.yMMMEd().format(dateTime);
    final time = DateFormat.Hm().format(dateTime);

    return '$date $time';
  }

  String convertToDate(DateTime dateTime) {
    final date = DateFormat.MMMEd().format(dateTime);
    return date;
  }

  String convertToDateMonth(DateTime dateTime) {
    final date = DateFormat.MMM().format(dateTime);
    return date;
  }

  String get toDate => convertToDate(this);

  String get toDateMonth => convertToDateMonth(this);

  String convertToDateAr(DateTime dateTime) {
    final date = DateFormat.MMMEd("ar_AE");
    return date.format(dateTime);
  }

  String get toDateAr => convertToDateAr(this);

  String get switchToDate => appLanguage == AppStrings.ar ? toDateAr : toDate;

  String stringDate(DateTime dateTime) {
    final date = DateFormat.yMMM().format(dateTime);
    return date;
  }

  String date(DateTime dateTime) {
    final date = DateFormat.MMMMd().format(dateTime);
    return date;
  }

  DateTime parseDate(String dateTime) {
    final date = DateFormat('yyyy-MM-dd').parse(dateTime);
    return date;
  }

  DateTime parseTime(String dateTime) {
    final time = DateFormat('HH:mm').parse(dateTime);
    return time;
  }

  String toTime(DateTime dateTime) {
    final time = DateFormat.Hm().format(dateTime);
    return time;
  }
}


abstract class Language {
  /// flag for short form e.g(1 min) | long form e.g(1 minute ago)
  bool? shortForm;
  Language(this.shortForm);

  String prefixAgo();
  String prefixFromNow();

  String suffixAgo();
  String suffixFromNow();

  String lessThanOneMinute(int seconds);
  String aboutAMinute(int minutes);
  String minutes(int minutes);

  String aboutAnHour(int minutes);
  String hours(int hours);

  String aDay(int hours);
  String days(int days);

  String aboutAMonth(int days);
  String months(int months);

  String aboutAYear(int year);
  String years(int years);

  String delimiter() => ' ';
}

/// To use [English] language for timeAgo. More languages can be added in the future.
class English implements Language {
  @override
  bool? shortForm;
  English({bool shortForm = false}) {
    // ignore: prefer_initializing_formals
    this.shortForm = shortForm;
  }

  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => shortForm! ? '' : 'ago';
  @override
  String suffixFromNow() => shortForm! ? '' : 'from now';
  @override
  String lessThanOneMinute(int seconds) => shortForm! ? 'now' : 'a moment';
  @override
  String aboutAMinute(int minutes) => shortForm! ? '1 min' : 'a minute';
  @override
  String minutes(int minutes) =>
      shortForm! ? '$minutes min' : '$minutes minutes';
  @override
  String aboutAnHour(int minutes) => shortForm! ? '~1 h' : 'about an hour';
  @override
  String hours(int hours) => shortForm! ? '$hours h' : '$hours hours';
  @override
  String aDay(int hours) => shortForm! ? '~1 d' : 'a day';
  @override
  String days(int days) => shortForm! ? '$days d' : '$days days';
  @override
  String aboutAMonth(int days) => shortForm! ? '~1 mo' : 'about a month';
  @override
  String months(int months) => shortForm! ? '$months mo' : '$months months';
  @override
  String aboutAYear(int year) => shortForm! ? '~1 yr' : 'about a year';
  @override
  String years(int years) => shortForm! ? '$years yr' : '$years years';
  @override
  String delimiter() => ' ';
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}

extension CountryFlag on String {
  String countryFlag(String countryCode) {
    return generateCountryFlag(countryCode);
  }
}

String generateCountryFlag(String countryCode) {
  // String countryCode = 'SAR';
  String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
  return flag;
}

extension ContextExtension on BuildContext {
  toast({
    required String text,
    required ToastStatus status,
  }) =>
      Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseToastColor(status),
        textColor: Colors.white,
        fontSize: 16.0,
      );

  showSnackBar({
    required String text,
    required SnackStatus status,
    Color? textColor,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(text, style: TextStyle(color: textColor ?? Colors.white)),
        backgroundColor: snackColor(status),
      ),
    );
  }

  showLoading([Color? color]) {
    showDialog(
      context: this,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText.h3(
                    text: 'loading'.tr,
                    color: color ?? AppColor.nutritionColor,
                  ),
                  1.0.width,
                  SpinKitFadingCircle(
                    color: color ?? AppColor.nutritionColor,
                    size: 50.0,
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     CustomText.h3(
              //       context: context,
              //       text: 'Loading ...',
              //       color: AppColor.blackRatingColor,
              //     ),
              //     const CustomSizedBox(true, 1.0),
              //     SpinKitChasingDots(
              //       itemBuilder: (BuildContext context, int index) {
              //         return DecoratedBox(
              //           decoration: BoxDecoration(
              //             borderRadius: index.isEven ? BorderRadius.circular(10.0) : BorderRadius.circular(20.0),
              //             color: index.isEven ? AppColor.nutritionColor[920] : AppColor.nutritionColor[940],
              //           ),
              //         );
              //       },
              //     ),
              //   ],
              // )
            ],
          ),
        );
      },
    );
  }

  hideLoading() {
    Navigator.pop(this);
  }

  void showCustomToast({
    required String title,
    required String subtitle,
    ToastStatus status = ToastStatus.error,
    Duration duration = const Duration(seconds: 2),
    Duration transitionDuration = const Duration(milliseconds: 250),
    AlignmentGeometry alignment = Alignment.topCenter,
  }) {
    final overlayState = Overlay.of(this);
    final animationController = AnimationController(
      vsync: overlayState,
      duration: transitionDuration,
    );
    final toast = OverlayEntry(
      builder: (_) {
        final animation = CurvedAnimation(
          parent: animationController,
          curve: Curves.easeOutCubic,
        );
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -0.1),
            end: const Offset(0, 0),
          ).animate(animation),
          child: Transform.translate(
            offset: const Offset(0, 60),
            child: Align(
              alignment: alignment,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Column(
                  children: [
                    Card(
                      color: chooseToastColor(status),
                      child: Container(
                        width: MediaQuery.of(this).size.width,
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3.0),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Icon(
                                status == ToastStatus.error ? Icons.close : status == ToastStatus.warning ? CupertinoIcons.exclamationmark : Icons.check,
                                color: status == ToastStatus.error ? Colors.red : status == ToastStatus.warning ? Colors.orange : Colors.green,
                              ),
                            ),
                            0.5.width,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText.h8(
                                    text: title,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  // CustomText(
                                  //   text: subtitle,
                                  //   color: Colors.white,
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
    overlayState.insert(toast);
    animationController.forward();
    Future.delayed(duration, () {
      animationController.reverse().then((_) {
        toast.remove();
        animationController.dispose();
      });
    });
  }
}


extension PaddingList on List<Widget> {
  List<Widget> paddingList(EdgeInsetsGeometry padding) {
    return map((e) => Padding(padding: padding, child: e)).toList();
  }

  List<Widget> paddingAll(double padding) {
    return map((e) => Padding(padding: EdgeInsets.all(padding), child: e)).toList();
  }

  List<Widget> paddingSymmetric({double horizontal = 0.0, double vertical = 0.0}) {
    return map((e) => Padding(padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical), child: e)).toList();
  }

  List<Widget> paddingOnly({double left = 0.0, double right = 0.0, double top = 0.0, double bottom = 0.0}) {
    return map((e) => Padding(padding: EdgeInsets.only(left: left, right: right, top: top, bottom: bottom), child: e)).toList();
  }

  List<Widget> paddingFromLTRB(double left, double top, double right, double bottom) {
    return map((e) => Padding(padding: EdgeInsets.fromLTRB(left, top, right, bottom), child: e)).toList();
  }
}