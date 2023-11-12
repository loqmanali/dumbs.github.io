import 'package:dumbs/core/extensions/extension.dart';
import 'package:flutter/material.dart';

class FormValidator {
  static bool login({
    required String email,
    required String password,
    required BuildContext context,
  }) {
    Pattern emailPattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp emailRegExp = RegExp(emailPattern.toString());

    if (email.isEmpty) {
      context.showCustomToast(
        title: 'Email',
        subtitle: 'Please Enter Your Email',
      );
      return false;
    } else if (!emailRegExp.hasMatch(email)) {
      context.showCustomToast(
        title: 'Email',
        subtitle: 'Please Enter Valid Email',
      );
      return false;
    } else if (password.isEmpty) {
      context.showCustomToast(
        title: 'Password',
        subtitle: 'Please Enter Your Password',
      );
      return false;
    }
    return true;
  }
}