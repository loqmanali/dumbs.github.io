import 'dart:developer';
import 'package:flutter/material.dart';
import 'question_widget.dart';

class PageViewWidget<T> extends StatelessWidget {
  const PageViewWidget({
    super.key,
    required this.pageController,
    required this.questions,
  });

  final PageController pageController;
  final List<T> questions;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      itemCount: questions.length,
      itemBuilder: (context, index) {
        final question = questions[index];
        return QuestionWidget(question: question);
      },
      onPageChanged: (index) {
        log('$index', name: 'onPageChanged');
      },
    );
  }
}