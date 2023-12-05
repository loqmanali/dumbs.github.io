import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../itil_dump/itil_question.dart';
import '../../question_model.dart';
import '../project_plus_question.dart';
part 'project_plus_state.dart';

class ProjectPlusCubit extends Cubit<ProjectPlusState> {
  ProjectPlusCubit() : super(ProjectPlusInitial());

  static ProjectPlusCubit get(context) => BlocProvider.of(context);

  int currentQuestionIndex = 0;
  int totalScore = 0;
  Map<int, bool> questionAnsweredMap = {};

  PageController pageController = PageController(initialPage: 0);

  void changeQuestion(int index) {
    pageController.jumpToPage(index);
    currentQuestionIndex = index;
    emit(ProjectPlusChangeQuestionState());
  }

  increaseQuestion(List<QuestionModel> projectPlusQuestion) {
    if (currentQuestionIndex < projectPlusQuestion.length - 1) {
      currentQuestionIndex++;
      emit(ProjectPlusIncreaseQuestionState());
    }
  }

  decreaseQuestion() {
    if (currentQuestionIndex > 0) {
      currentQuestionIndex--;
      emit(ProjectPlusDecreaseQuestionState());
    }
  }

  List<ProjectsModel> projects = [
    ProjectsModel(
      name: 'Project+',
      questions: projectPlusQuestion,
    ),
    ProjectsModel(
      name: 'ITIL',
      questions: itilQuestion,
    ),
  ];

}