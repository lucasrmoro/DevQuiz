import 'package:DevQuiz/challenge/widgets/question_indicator/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/widget/progress/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  final QuestionModel question;

  const QuizWidget({Key? key, required this.title, required this.question})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 98,
            ),
            child: Text(
              question.title,
              style: AppTextStyles.heading,
            ),
          ),
          SizedBox(height: 24),
          ...question.answers.map((e) => AnswerWidget(
            isRight: e.isRight,
            title: e.title,
          ),).toList(),
        ],
      ),
    );
  }
}
