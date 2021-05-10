import 'package:DevQuiz/challenge/challenge_controller.dart';
import 'package:DevQuiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/challenge/widgets/question_indicator/quiz/quiz_widget.dart';
import 'package:DevQuiz/home/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/shared/widget/progress/models/question_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;

  const ChallengePage({Key? key, required this.questions}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  final controller = ChallengeController();
  final pageController = PageController();

  @override
  void initState() {
    pageController.addListener(() {
      controller.currentPage = pageController.page!.toInt() + 1;
    });
    super.initState();
  }

  void nextPage() {
    if(controller.currentPage < widget.questions.length) {
      pageController.nextPage(
          duration: Duration(milliseconds: 100), curve: Curves.linear);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(95),
        child: Column(
          children: [
            SizedBox(height: 8),
            SafeArea(
              top: true,
              child: Row(
                children: [
                  Expanded(flex: 1, child: BackButton()),
                  Expanded(
                    flex: 15,
                    child: ValueListenableBuilder<int>(
                      valueListenable: controller.currentPageNotifier,
                      builder: (context, value, _) =>
                          QuestionIndicatorWidget(
                            currentPage: value,
                            length: widget.questions.length,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: widget.questions
            .map(
              (e) =>
              QuizWidget(
                question: e,
                onChange: nextPage,
              ),
        )
            .toList(),
      ),
      bottomNavigationBar: SafeArea(
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ValueListenableBuilder<int>(
                valueListenable: controller.currentPageNotifier,
                builder: (context, value, _) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        if(value < widget.questions.length)
                        Expanded(
                            child: NextButtonWidget.white(
                              label: "Pular",
                              onTap: nextPage,
                            )),
                        if(value == widget.questions.length)
                        Expanded(
                            child: NextButtonWidget.green(
                              label: "Terminar",
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ))
                      ],
                    )
          )
      ),
    ),
    );
  }
}
