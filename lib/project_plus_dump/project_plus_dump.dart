import 'dart:developer';

import 'package:dumbs/core/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';

import '../core/widgets/custom_text.dart';
import 'project_plus_question.dart';
import '../question_widget.dart';

class ProjectPlusDump extends StatefulWidget {
  const ProjectPlusDump({super.key});

  @override
  State<ProjectPlusDump> createState() => _StateProjectPlusDump();
}

class _StateProjectPlusDump extends State<ProjectPlusDump> {
  int currentQuestionIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  List<String?> selectedAnswers = List.filled(projectPlusQuestion.length, null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project+ Dump'),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageViewWidget(pageController: pageController, questions: projectPlusQuestion),
          FooterWidget(pageController: pageController, questions: projectPlusQuestion),
        ],
      ),
    );
  }

  // Container footerWidget(BuildContext context) {
  //   return Container(
  //     width: context.width,
  //     padding: const EdgeInsets.all(15.0),
  //     decoration: BoxDecoration(
  //       color: Colors.deepPurple,
  //       border: Border.all(
  //         color: Colors.deepPurple,
  //       ),
  //     ),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         TextButton(
  //           onPressed: () {
  //             pageController.previousPage(duration: const Duration(microseconds: 250), curve: Curves.easeIn);
  //             setState(() {
  //               if (currentQuestionIndex == 0) return;
  //               currentQuestionIndex--;
  //             });
  //           },
  //           style: TextButton.styleFrom(
  //             backgroundColor: Colors.white,
  //           ),
  //           child: const CustomText(
  //             text: 'Back',
  //             color: Colors.deepPurple,
  //           ),
  //         ),
  //         CustomText(text: '${currentQuestionIndex + 1}/${projectPlusQuestion.length}', color: Colors.white),
  //         TextButton(
  //           onPressed: () {
  //             pageController.nextPage(duration: const Duration(microseconds: 250), curve: Curves.easeIn);
  //             setState(() {
  //               if (currentQuestionIndex == projectPlusQuestion.length - 1) return;
  //               currentQuestionIndex++;
  //             });
  //           },
  //           style: TextButton.styleFrom(
  //             backgroundColor: Colors.white,
  //           ),
  //           child: const CustomText(
  //             text: 'Next',
  //             color: Colors.deepPurple,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

class FooterWidget<T> extends StatefulWidget {
  const FooterWidget({
    super.key,
    required this.pageController,
    required this.questions,
  });

  final PageController pageController;
  final List<T> questions;

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        border: Border.all(
          color: Colors.deepPurple,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              widget.pageController.previousPage(duration: const Duration(microseconds: 250), curve: Curves.easeIn);
              setState(() {
                if (currentQuestionIndex == 0) return;
                currentQuestionIndex--;
              });
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: const CustomText(
              text: 'Back',
              color: Colors.deepPurple,
            ),
          ),
          CustomText(text: '${currentQuestionIndex + 1}/${widget.questions.length}', color: Colors.white),
          TextButton(
            onPressed: () {
              widget.pageController.nextPage(duration: const Duration(microseconds: 250), curve: Curves.easeIn);
              setState(() {
                if (currentQuestionIndex == widget.questions.length - 1) return;
                currentQuestionIndex++;
              });
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: const CustomText(
              text: 'Next',
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}

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
