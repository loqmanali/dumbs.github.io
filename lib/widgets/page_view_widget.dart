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
        // final randomQuestions = questions..shuffle();
        // final question = math.Random().nextBool() ? randomQuestions[index] : randomQuestions[index];
        final question = questions[index];
        return QuestionWidget(
          question: question,
          questionLength: questions.length,
        );
      },
      onPageChanged: (index) {
        log('$index', name: 'onPageChanged');
      },
    );
  }
}
