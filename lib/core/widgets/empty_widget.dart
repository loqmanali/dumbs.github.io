import '../extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../styles/app_colors.dart';
import 'coustom_sized_box.dart';
import 'custom_text.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomSizedBox(false, 5.0.h),
        Center(
          child: FlutterLogo(
            size: 200.0.w,
          ),
        ),
        CustomText.h1(
          text: 'noDataAvalible'.tr,
          alignment: Alignment.center,
          color: AppColor.black,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        ),
        CustomText.h3(
          text: 'thereIsNoDataToShowYouRightNow'.tr,
          alignment: Alignment.center,
          color: AppColor.black,
        ),
      ],
    );
  }
}
