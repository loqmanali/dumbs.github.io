import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension AnimatedList on List<Widget> {
  List<Widget> animateList({Duration? interval}) {
    return AnimateList(
      effects: [const FadeEffect()],
      interval: interval ?? 300.ms,
      children: this,
    );
  }
}

extension AnimationWidget on Widget {
  //
  // Widget get fadeEx => animate().fade();
  // Widget get slideEx => animate().slide();
  // Widget get scaleEx => animate().scale();
  // Widget get rotateEx => animate().rotate();
  // Widget get fadeSlideEx => animate().fade().slide();
  // Widget get fadeScaleEx => animate().fade().scale();
  // Widget get fadeRotateEx => animate().fade().rotate();
  // Widget get slideScaleEx => animate().slide().scale();
  // Widget get slideRotateEx => animate().slide().rotate();
  // Widget get scaleRotateEx => animate().scale().rotate();
  // Widget get fadeSlideScaleEx => animate().fade().slide().scale();
  // Widget get fadeSlideRotateEx => animate().fade().slide().rotate();
  // Widget get fadeScaleRotateEx => animate().fade().scale().rotate();
  // Widget get slideScaleRotateEx => animate().slide().scale().rotate();
  // Widget get fadeSlideScaleRotateEx => animate().fade().slide().scale().rotate();

}