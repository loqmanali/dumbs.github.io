import 'package:dumbs/core/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../styles/app_colors.dart';
import 'custom_text.dart';

class CustomOutLineButtonWithIcon extends StatelessWidget {
  const CustomOutLineButtonWithIcon({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.minimumSize,
    this.foregroundColor,
    this.backgroundColor,
    this.isIconFirst = false,
    this.fontSize,
  });

  final String label;
  final Widget icon;
  final void Function()? onPressed;
  final Size? minimumSize;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final bool isIconFirst;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      label: isIconFirst ? icon : CustomText(
        text: label,
        color: AppColor.white,
        fontSize: fontSize ?? 16.0,
        fontWeight: FontWeight.bold,
      ),
      icon: !isIconFirst ? icon : CustomText(
        text: label,
        color: AppColor.white,
        fontSize: fontSize ?? 16.0,
        fontWeight: FontWeight.bold,
      ),
      style: OutlinedButton.styleFrom(
        foregroundColor: foregroundColor ?? AppColor.white,
        backgroundColor: backgroundColor ?? Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35.0),
        ),
        side: const BorderSide(color: AppColor.white, width: 2.0),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        minimumSize: minimumSize ?? Size(context.width, context.height * 0.065),
      ),
    ).animate().fade().slide(delay: 300.ms);
  }
}