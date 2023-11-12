// import 'package:flutter/material.dart';
// import '../widgets/bottom_navigation_widget.dart';
// import '../widgets/custom_appbar.dart';
//
// abstract class BaseScreen extends StatefulWidget {
//   const BaseScreen({Key? key}) : super(key: key);
//
//   @override
//   State<BaseScreen> createState();
// }
//
// class BaseScreenState<T extends BaseScreen> extends State<T> {
//   String get title => '';
//
//   Color? get backgroundColor => null;
//
//   Color? get appBarColor => null;
//
//   Color? get iconColor => null;
//
//   List<Widget>? get actions => null;
//
//   Widget? get leading => null;
//
//   TextStyle? get style => null;
//
//   Widget? body(BuildContext context) {
//     return null;
//   }
//
//   PreferredSizeWidget? appBar() {
//     return CustomAppBar(
//       title: title,
//       backgroundColor: appBarColor,
//       iconColor: iconColor,
//       actions: actions,
//       leading: leading,
//       style: style,
//     );
//   }
//
//   Widget? floatingActionButton(BuildContext context) => null;
//
//   Widget? bottomNavigationBar(BuildContext context) {
//     return const BottomNavigationWidget();
//   }
//
//   FloatingActionButtonLocation? floatingActionButtonLocation;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       appBar: appBar(),
//       body: body(context)!,
//       bottomNavigationBar: bottomNavigationBar(context),
//       floatingActionButton: floatingActionButton(context),
//       floatingActionButtonLocation: floatingActionButtonLocation,
//     );
//   }
// }