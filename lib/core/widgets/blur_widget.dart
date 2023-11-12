import 'dart:ui';

import 'package:flutter/material.dart';

class BlurWidget extends StatelessWidget {
  const BlurWidget({
    Key? key,
    required this.child,
    this.sigmaX = 5.0,
    this.sigmaY = 5.0,
    this.borderRadius,
  }) : super(key: key);

  final Widget child;
  final double sigmaX;
  final double sigmaY;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(8.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: Container(
          // padding: const EdgeInsets.all(10.0),
          // color: Colors.black.withOpacity(0.5),
          child: child,
        ),
      ),
    );
  }
}