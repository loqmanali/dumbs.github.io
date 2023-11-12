import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import 'custom_text.dart';

class CustomCheckboxListTile extends StatelessWidget {
  const CustomCheckboxListTile({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
  });

  final bool value;
  final Function(bool?)? onChanged;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CheckboxTheme(
      data: const CheckboxThemeData(
        visualDensity: VisualDensity.standard,
      ),
      child: CheckboxListTile.adaptive(
        value: value,
        onChanged: onChanged,
        title: CustomText(
          text: title,
          color: AppColors.appWhite,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
        checkColor: Colors.white,
        activeColor: AppColors.appRedColor,
        side: const BorderSide(
          color: AppColors.appWhite,
          width: 1.0,
        ),
        checkboxShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.0),
        ),
      ),
    );
  }
}