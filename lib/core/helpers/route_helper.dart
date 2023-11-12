import 'package:flutter/material.dart';

class RouteHelper {
  static void navigateAndRemoveUntil({
    required BuildContext context,
    required String routeName,
    dynamic args,
  }) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      routeName,
      (route) => false,
      arguments: args,
    );
  }

  static void navigateTo({
    required BuildContext context,
    required String routeName,
    dynamic args,
  }) =>
      Navigator.pushNamed(
        context,
        routeName,
        arguments: args,
      );

  static void navigatePop({
    required BuildContext context,
  }) =>
      Navigator.pop(context);
}
