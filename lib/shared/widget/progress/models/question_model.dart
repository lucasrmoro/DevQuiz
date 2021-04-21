import 'package:DevQuiz/shared/widget/progress/models/answers_model.dart';

class QuestionModel {
  final String title;
  final List<AnswersModel> answers;

  QuestionModel({required this.title, required this.answers}) : assert(answers.length == 4);

}