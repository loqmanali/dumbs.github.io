import 'package:dumbs/core/widgets/coustom_sized_box.dart';
import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import 'custom_text.dart';

class CustomDropDownWidget<T> extends StatelessWidget {
  const CustomDropDownWidget({
    super.key,
    required this.items,
    required this.label,
    required this.onChanged,
  });

  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: label,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          1.0.height,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: DropdownButton<T>(
              items: items,
              isExpanded: true,
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              underline: Container(),
              style: const TextStyle(
                color: AppColors.interestsBgColor,
                fontSize: 14.0,
              ),
              borderRadius: BorderRadius.circular(25.0),
              hint: CustomText(
                text: '${'continueTitle'} $label',
                color: AppColors.appWhite,
              ),
              icon: const RotatedBox(
                quarterTurns: 3,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColors.appWhite,
                  size: 18.0,
                ),
              ),
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}