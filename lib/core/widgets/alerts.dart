import 'dart:io';

import 'package:dumbs/core/widgets/coustom_sized_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'custom_text.dart';



enum ToastStatus { success, error, warning }

Color chooseToastColor(ToastStatus status) {
  Color color;

  switch (status) {
    case ToastStatus.success:
      color = Colors.green;
      break;
    case ToastStatus.error:
      color = Colors.red;
      break;
    case ToastStatus.warning:
      color = Colors.amber;
      break;
  }

  return color;
}

enum SnackStatus { success, error, warning }

Color snackColor(SnackStatus status) {
  Color color;

  switch (status) {
    case SnackStatus.success:
      color = Colors.green;
      break;
    case SnackStatus.error:
      color = Colors.red;
      break;
    case SnackStatus.warning:
      color = Colors.amber;
      break;
  }

  return color;
}

class Alerts {
  static Future<dynamic> showAlertDialog(
    BuildContext context, {
    required String title,
    TextStyle? titleStyle,
    required String content,
    String? cancelActionText,
    required String defaultActionText,
    required Function()? onPressedOk,
  }) async {
    if (!Platform.isIOS) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(title, style: titleStyle),
              content: Text(content),
              actions: <Widget>[
                if (cancelActionText != null)
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text(
                      cancelActionText,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                TextButton(
                  onPressed: onPressedOk,
                  child: Text(
                    defaultActionText,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            );
          });
    } else {
      return showCupertinoDialog(
          context: context,
          builder: (context) {
            return CupertinoAlertDialog(
              title: Text(title, style: titleStyle),
              content: Text(content),
              actions: <Widget>[
                if (cancelActionText != null)
                  CupertinoDialogAction(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text(
                      cancelActionText,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                CupertinoDialogAction(
                  onPressed: onPressedOk,
                  child: Text(
                    defaultActionText,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            );
          });
    }
  }

  static Future<dynamic> showCustomAlertDialog(
    BuildContext context, {
    required String title,
    TextStyle? titleStyle,
    required Widget content,
    String? cancelActionText,
    required String defaultActionText,
    required Function()? onPressedOk,
  }) async {
    // if (!Platform.isIOS) {
      showAdaptiveDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(title, style: titleStyle),
              content: content,
              actions: <Widget>[
                if (cancelActionText != null)
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text(
                      cancelActionText,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                TextButton(
                  onPressed: onPressedOk,
                  child: Text(
                    defaultActionText,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            );
          });
    // } else {
    //   return showCupertinoDialog(
    //       context: context,
    //       builder: (context) {
    //         return CupertinoAlertDialog(
    //           title: Text(title, style: titleStyle),
    //           content: Dialog(
    //             elevation: 0.0,
    //             backgroundColor: Colors.transparent,
    //             insetPadding: const EdgeInsets.all(0.0),
    //             child: content,
    //           ),
    //           actions: <Widget>[
    //             if (cancelActionText != null)
    //               CupertinoDialogAction(
    //                 onPressed: () => Navigator.of(context).pop(false),
    //                 child: Text(
    //                   cancelActionText,
    //                   style: const TextStyle(color: Colors.red),
    //                 ),
    //               ),
    //             CupertinoDialogAction(
    //               onPressed: onPressedOk,
    //               child: Text(
    //                 defaultActionText,
    //                 style: const TextStyle(color: Colors.black),
    //               ),
    //             ),
    //           ],
    //         );
    //       });
    // }
  }

  static showImage({context, Function()? camera, Function()? gallery}) {
    return AlertDialog(
      title: const Text('Choose Image'),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              onPressed: camera,
              icon: const Icon(Icons.camera),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent),
              label: const Text('Camera'),
            ),
            ElevatedButton.icon(
              onPressed: gallery,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
              icon: const Icon(Icons.collections_outlined),
              label: const Text('Gallery'),
            ),
          ],
        ),
      ],
    );
  }

  static void showToast({
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

  static showSnackBar({
    required BuildContext context,
    required String text,
    required SnackStatus status,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: snackColor(status),
      ),
    );
  }

  // TODO: show loading dialog
  // static void showLoadingDialog(BuildContext context, {required String title}) {
  //   showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (context) {
  //       return CustomDialog(
  //         context,
  //         isSvg: true,
  //         image: AppAssets.noProgram,
  //         title: title,
  //         description: '',
  //         height: 90.0.w,
  //         width: 90.0.w,
  //         contentPadding: const EdgeInsets.all(20.0),
  //         buttonText: 'continue'.tr,
  //         onPressed: () {
  //           AppNavigator.dismiss(context);
  //         },
  //       );
  //     },
  //   );
  // }

  static showCustomToast({
    required String title,
    required String subtitle,
    required BuildContext context,
    ToastStatus status = ToastStatus.error,
    Duration duration = const Duration(seconds: 10),
    Duration transitionDuration = const Duration(milliseconds: 250),
    AlignmentGeometry alignment = Alignment.topCenter,
  }) {
    final overlayState = Overlay.of(context);
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
                child: Card(
                  color: chooseToastColor(status),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width,
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
                            status == ToastStatus.error ? Icons.close : Icons.check,
                            color: status == ToastStatus.error ? Colors.red : Colors.green,
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
                              CustomText(
                                text: subtitle,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
