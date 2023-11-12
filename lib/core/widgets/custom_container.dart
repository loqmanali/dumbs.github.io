import 'package:dumbs/core/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.child, required this.height});

  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * height,
      width: context.width,
      decoration: const BoxDecoration(
        color: AppColors.riyadhBtnColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: Offset(0.5, 1.0),
          ),
        ],
      ),
      child: child,
    );
  }
}