import 'package:DevQuiz/challenge/widgets/question_indicator/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  const QuizWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 98),
            child: Text(title, style: AppTextStyles.heading),
          ),
          SizedBox(height: 24),
          AnswerWidget(isRight: true,isSelected: true,title: "Possibilita a criação de aplicativos compilados nativamente"),
          AnswerWidget(title: "Kit de desenvolvimento de interface do usuário"),
          AnswerWidget(title: "Acho que é uma marca de café do Himalaia"),
          AnswerWidget(title: "Possibilita a criação de desktops que são muito incríveis")
        ],
      ),
    );
  }
}
