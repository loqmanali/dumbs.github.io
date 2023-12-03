class QuestionModel {
  final int id;
  final String question;
  final AnswersModel answers;

  QuestionModel({required this.id, required this.question, required this.answers});
}

class AnswersModel {
  final int id;
  final List<String> answers;
  final Set<String> correctAnswer;
  final int points;
  final bool isMultipleChoice;

  AnswersModel({
    required this.id,
    required this.answers,
    required this.correctAnswer,
    required this.isMultipleChoice,
    required this.points,
  });
}
