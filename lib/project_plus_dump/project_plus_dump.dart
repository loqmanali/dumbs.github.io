import 'dart:developer';

import 'package:dumbs/core/extensions/media_query_extension.dart';
import 'package:dumbs/core/widgets/custom_drop_down_widget.dart';
import 'package:dumbs/project_plus_dump/cubit/project_plus_cubit.dart';
import 'package:dumbs/question_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/widgets/custom_text.dart';
import 'project_plus_question.dart';
import '../question_widget.dart';

class ProjectPlusDump extends StatefulWidget {
  const ProjectPlusDump({super.key});

  @override
  State<ProjectPlusDump> createState() => _StateProjectPlusDump();
}

class _StateProjectPlusDump extends State<ProjectPlusDump> {
  // int currentQuestionIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  List<String?> selectedAnswers = List.filled(projectPlusQuestion.length, null);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectPlusCubit, ProjectPlusState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Project+'),
            actions: [
              SizedBox(
                width: context.width * 0.33,
                child: CustomDropDownWidget<QuestionModel>(
                  value: projectPlusQuestion[context.read<ProjectPlusCubit>().currentQuestionIndex],
                  items: projectPlusQuestion.map((e) {
                    return DropdownMenuItem<QuestionModel>(
                      value: e,
                      child: CustomText(text: 'Question #${e.id}'),
                    );
                  }).toList(),
                  label: 'Select Question',
                  onChanged: (value) {
                    setState(() {
                      pageController.jumpToPage(projectPlusQuestion.indexOf(value!));
                      context.read<ProjectPlusCubit>().currentQuestionIndex = projectPlusQuestion.indexOf(value);
                    });
                  },
                ),
              ),
            ],
          ),
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageViewWidget(pageController: pageController, questions: projectPlusQuestion),
              FooterWidget(pageController: pageController, questions: projectPlusQuestion),
            ],
          ),
        );
      },
    );
  }
}

class FooterWidget<T> extends StatelessWidget {
  const FooterWidget({
    super.key,
    required this.pageController,
    required this.questions,
  });

  final PageController pageController;
  final List<T> questions;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectPlusCubit, ProjectPlusState>(
      builder: (context, state) {
        int currentQuestionIndex = context.read<ProjectPlusCubit>().currentQuestionIndex;
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
                  pageController.previousPage(duration: const Duration(microseconds: 250), curve: Curves.easeIn);
                  // if (currentQuestionIndex == 0) return;
                  // currentQuestionIndex--;
                  context.read<ProjectPlusCubit>().decreaseQuestion();
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const CustomText(
                  text: 'Back',
                  color: Colors.deepPurple,
                ),
              ),
              CustomText(text: '${currentQuestionIndex + 1}/${questions.length}', color: Colors.white),
              TextButton(
                onPressed: () {
                  pageController.nextPage(duration: const Duration(microseconds: 250), curve: Curves.easeIn);
                    // if (currentQuestionIndex == questions.length - 1) return;
                    // currentQuestionIndex++;
                  context.read<ProjectPlusCubit>().increaseQuestion(projectPlusQuestion);
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
      },
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
