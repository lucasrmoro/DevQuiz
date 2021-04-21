import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/widget/progress/models/answers_model.dart';
import 'package:DevQuiz/shared/widget/progress/models/question_model.dart';
import 'package:DevQuiz/shared/widget/progress/models/quiz_model.dart';
import 'package:DevQuiz/shared/widget/progress/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(name: "Lucas",
      photoUrl: "https://scontent.furg1-1.fna.fbcdn.net/v/t1.6435-9/145511228_2862714964013256_4212670958624816808_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=_b6CDd3q3fYAX-9gkbe&_nc_ht=scontent.furg1-1.fna&oh=824aeb8a27e89bb9049c200907a4ae59&oe=60A4702C",);
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(title: "NWL 5 Flutter", questions: [
        QuestionModel(title: "Está curtindo o Flutter?", answers: [
          AnswersModel(title: "Legal"),
          AnswersModel(title: "Amando o Flutter"),
          AnswersModel(title: "Muito top"),
          AnswersModel(title: "Show de bola", isRight: true),
        ] )
      ], image: AppImages.blocks , level: Level.facil)
    ];
  }
  }