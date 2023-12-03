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
    this.value,
  });

  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;
  final String label;
  final T? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: DropdownButton<T>(
        items: items,
        isExpanded: true,
        value: value,
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        underline: Container(),
        style: const TextStyle(
          color: AppColors.appBlack,
          fontSize: 14.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
        hint: CustomText(
          text: label,
          color: AppColors.appBlack,
        ),
        icon: const RotatedBox(
          quarterTurns: 3,
          child: Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.appBlack,
            size: 18.0,
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}