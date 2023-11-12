import 'package:flutter/material.dart';

class AppNavigator {
  // static void navigatorTo(BuildContext context, bool back, Widget widget) {
  //   // MaterialPageRoute route = MaterialPageRoute(builder: (context) => widget);
  //   if (back) {
  //     // Navigator.of(context).push(route);
  //     Navigator.push(
  //       context,
  //       CustomRoute(
  //         child: widget,
  //       ),
  //     );
  //   } else {
  //     // Navigator.of(context).pushReplacement(route);
  //     Navigator.pushReplacement(
  //       context,
  //       CustomRoute(
  //         child: widget,
  //       ),
  //     );
  //   }
  // }
  static void navigatorTo(BuildContext context, bool back, Widget widget) {
    // MaterialPageRoute route = MaterialPageRoute(builder: (context) => widget);
    if (back) {
      // Navigator.of(context).push(route);
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
    } else {
      // Navigator.of(context).pushReplacement(route);
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
    }
  }

  static void dismiss(context) => Navigator.pop(context);

  static void navigatorToAndRemoveUntil(BuildContext context, Widget widget) {
    // MaterialPageRoute route = MaterialPageRoute(builder: (context) => widget);
    // Navigator.of(context).pushAndRemoveUntil(route, (route) => false);
    Navigator.pushAndRemoveUntil(
      context,
      CustomRoute(
        child: widget,
      ),
      (route) => false,
    );
  }
}

class CustomRoute<T> extends PageRouteBuilder<T> {
  final Widget child;

  CustomRoute({required this.child})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            if (animation.status == AnimationStatus.reverse) {
              return AnimatedOpacity(
                opacity: 0.5,
                duration: const Duration(milliseconds: 500),
                child: child,
              );
            } else {
              return child;
            }
          },
          transitionDuration: const Duration(milliseconds: 500),
          reverseTransitionDuration: const Duration(milliseconds: 500),
        );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}


extension AppNavigatorExtension on BuildContext {
  void navigatorTo(bool back, Widget widget) => AppNavigator.navigatorTo(this, back, widget);

  void navigatorToAndRemoveUntil(Widget widget) => AppNavigator.navigatorToAndRemoveUntil(this, widget);

  void dismiss() => AppNavigator.dismiss(this);
}