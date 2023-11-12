import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../extensions/media_query_extension.dart';
import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox(this.isVertical, this.value, {Key? key})
      : super(key: key);

  final bool isVertical;
  final double value;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    final Orientation orientation = MediaQuery.orientationOf(context);
    return isVertical == true
        ? SizedBox(
            width: orientation == Orientation.landscape
                ? context.kWidth(width) * 0.015 * value
                : context.kHeight(height) * 0.015 * value,
          )
        : SizedBox(
            height: orientation == Orientation.landscape
                ? height * 0.015 * value
                : width * 0.015 * value,
          );
  }
}

class CustomSizeBoxSliver extends StatelessWidget {
  const CustomSizeBoxSliver({Key? key, required this.isVertical, required this.value}) : super(key: key);

  final bool isVertical;
  final double value;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    final Orientation orientation = MediaQuery.orientationOf(context);

    return SliverToBoxAdapter(
      child: isVertical == true
          ? SizedBox(
        width: orientation == Orientation.landscape
            ? context.kWidth(width) * 0.015 * value
            : context.kHeight(height) * 0.015 * value,
      )
          : SizedBox(
        height: orientation == Orientation.landscape
            ? height * 0.015 * value
            : width * 0.015 * value,
      ),
    );
  }
}


extension CustomSizedBoxExtension on num {
  Widget get height => CustomSizedBox(false, toDouble().h);
  Widget get width => CustomSizedBox(true, toDouble());

  Widget get heightSliver => CustomSizeBoxSliver(isVertical: false, value: toDouble());
  Widget get widthSliver => CustomSizeBoxSliver(isVertical: true, value: toDouble());
}

extension PaddingExtension on Widget {
  Padding allP(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  Padding symmetricP({double horizontal = 0.0, double vertical = 0.0}) =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );

  Padding onlyP(
          {double left = 0.0,
          double right = 0.0,
          double top = 0.0,
          double bottom = 0.0}) =>
      Padding(
        padding: EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
        child: this,
      );
}
