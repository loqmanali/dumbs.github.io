import 'package:flutter/services.dart';
import '../styles/app_strings.dart';
import 'cache_helper.dart';
import 'di.dart';

String? token;
String? phoneIsVerified;
String? isVerified;
String? subscription;
String? questioner;
String? registerScreen;
String? fcmToken;

const String videoUrl = 'https://user-images.githubusercontent.com/59010033/133654860-d7cfe90f-924b-4776-887a-be5343e4d446.mp4';


// Future<String?>? getToken() async {
//   return di<CacheHelper>().getData(key: 'token');
// }
//
// Future<String?>? getSubscription() async {
//   return di<CacheHelper>().getData(key: 'subscription');
// }
//
// Future<String?>? getQuestioner() async {
//   return di<CacheHelper>().getData(key: 'questioner');
// }
//
// Future<String?>? getPhoneIsVerified() async {
//   return di<CacheHelper>().getData(key: 'phone');
// }
//
// Future<String?>? getIsVerified() async {
//   return di<CacheHelper>().getData(key: 'isVerified');
// }

// Future<String?>? getRegisterScreen() async {
//   return di<CacheHelper>().getData(key: 'registerScreen');
// }
//
// Future<String?>? getFcmToken() async {
//   return di<CacheHelper>().getData(key: 'deviceToken');
// }

String appLanguage = AppStrings.en;

// Future<String> getAppLanguage() async {
//   return await di<CacheHelper>().getData(key: 'appLang');
// }
//
// Future<bool> saveAppLanguage(String code) async {
//   appLanguage = code;
//   return await di<CacheHelper>().saveData(key: 'appLang', value: code);
// }

Future<String> getTranslationFile(String appLanguage) async {
  return await rootBundle
      .loadString('assets/translation/$appLanguage.json');
}