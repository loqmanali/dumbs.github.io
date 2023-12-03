part of 'project_plus_cubit.dart';

@immutable
abstract class ProjectPlusState {}

class ProjectPlusInitial extends ProjectPlusState {}


class ProjectPlusChangeQuestionState extends ProjectPlusState {}

class ProjectPlusIncreaseQuestionState extends ProjectPlusState {}

class ProjectPlusDecreaseQuestionState extends ProjectPlusState {}