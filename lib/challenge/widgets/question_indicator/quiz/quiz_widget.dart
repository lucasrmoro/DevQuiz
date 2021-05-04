import 'package:DevQuiz/challenge/widgets/question_indicator/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/widget/progress/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;

  const QuizWidget({Key? key, required this.question})
      : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  answer(int index) => widget.question.answers[index];

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
              widget.question.title,
              style: AppTextStyles.heading,
            ),
          ),
          SizedBox(height: 24),
          for(var i = 0; i < widget.question.answers.length; i++) AnswerWidget(
            answer: answer(i),
            isSelected: indexSelected == i,
            disabled: indexSelected != -1,
            onTap: (){
              indexSelected = i;
              setState(() {
              });
            },
          )
        ],
      ),
    );
  }
}
