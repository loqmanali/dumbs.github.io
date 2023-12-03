
import 'package:dumbs/core/extensions/media_query_extension.dart';
import 'package:dumbs/core/widgets/custom_drop_down_widget.dart';
import 'package:dumbs/project_plus_dump/cubit/project_plus_cubit.dart';
import 'package:dumbs/question_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/widgets/custom_text.dart';
import 'widgets/footer_widget.dart';
import 'widgets/page_view_widget.dart';
import 'project_plus_dump/project_plus_question.dart';

class DumpQuestionScreen extends StatefulWidget {
  const DumpQuestionScreen({super.key, required this.questions, required this.title});
  final List<QuestionModel> questions;
  final String title;

  @override
  State<DumpQuestionScreen> createState() => _StateProjectPlusDump();
}

class _StateProjectPlusDump extends State<DumpQuestionScreen> {

  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectPlusCubit, ProjectPlusState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            actions: [
              SizedBox(
                width: context.width * 0.35,
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
              PageViewWidget(pageController: pageController, questions: widget.questions),
              FooterWidget(pageController: pageController, questions: widget.questions),
            ],
          ),
        );
      },
    );
  }
}
