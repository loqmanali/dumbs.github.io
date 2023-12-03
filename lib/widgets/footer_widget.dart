import 'package:dumbs/core/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/widgets/custom_text.dart';
import '../project_plus_dump/cubit/project_plus_cubit.dart';
import '../project_plus_dump/project_plus_question.dart';

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