import 'package:DevQuiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/challenge/widgets/question_indicator/quiz/quiz_widget.dart';
import 'package:DevQuiz/shared/widget/progress/progress_indicator_widget.dart';
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
    );
  }
}
