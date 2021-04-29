import 'package:DevQuiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/challenge/widgets/question_indicator/quiz/quiz_widget.dart';
import 'package:DevQuiz/home/widgets/next_button/next_button_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Column(
          children: [
            SafeArea(
              top: true,
              child: QuestionIndicatorWidget(),
            ),
          ],
        ),
      ),
      body: QuizWidget(
        title: "Oque o Flutter faz em sua totalidade",
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: NextButtonWidget.white(label: "Fácil", onTap: (){},)),
              SizedBox(width: 8),
              Expanded(child: NextButtonWidget.green(label: "Confirmar", onTap: (){},))
            ],
          ),
        ),
      ),
    );
  }
}
