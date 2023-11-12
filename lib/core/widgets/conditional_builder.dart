import 'package:flutter/material.dart';

class ConditionalBuilder extends StatelessWidget {
  /// Condition to control what gets rendered.
  final bool condition;

  /// Run if [condition] is true.
  final WidgetBuilder builder;

  /// Run if [condition] is false and it is not null.
  final WidgetBuilder? fallback;

  const ConditionalBuilder({
    Key? key,
    required this.condition,
    required this.builder,
    this.fallback,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return condition ? builder(context) :
           fallback != null ?
           fallback!(context) : const SizedBox();
  }
}

class NothingWidget extends StatelessWidget {
  const NothingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}


