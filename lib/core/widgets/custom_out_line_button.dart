import 'package:dumbs/core/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../styles/app_colors.dart';
import 'custom_text.dart';

class CustomOutLineButton extends StatelessWidget {
  CustomOutLineButton({
    super.key,
    this.alignment = Alignment.center,
    required this.onPressed,
    required this.text,
    this.foregroundColor,
    this.backgroundColor,
    this.minimumSize,
    this.isSocialButton = false,
    this.image = '',
    this.borderColor = AppColor.white,
    this.fontWeight = FontWeight.bold,
  }) : assert(isSocialButton ? image.isNotEmpty : true && !isSocialButton ? image.isEmpty : true);

  final AlignmentGeometry alignment;
  final void Function()? onPressed;
  final String text;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color borderColor;
  final Size? minimumSize;
  final bool isSocialButton;
  final String image;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: foregroundColor ?? AppColor.white,
          backgroundColor: backgroundColor ?? Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0),
          ),
          side: BorderSide(color: borderColor, width: 2.0),
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          minimumSize: minimumSize ?? Size(context.width * 0.5, context.height * 0.065),
        ),
        child: isSocialButton
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(image, color: AppColors.appWhite),
                  CustomText(
                    text: text,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: SvgPicture.asset(image),
                  ),
                ],
              )
            : CustomText(
                text: text,
                fontWeight: fontWeight,
                textAlign: TextAlign.center,
              ),
      ),
    ).animate().fade().slide(delay: 300.ms);
  }
}
