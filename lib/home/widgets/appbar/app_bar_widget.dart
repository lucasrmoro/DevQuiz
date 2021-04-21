import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:DevQuiz/shared/widget/progress/models/user_model.dart';
import 'package:flutter/material.dart';

import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_text_styles.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;

  AppBarWidget({required this.user})
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(TextSpan(
                        text: "Olá, ",
                        style: AppTextStyles.title,
                        children: [
                          TextSpan(
                            text: "${user.name} Dev",
                            style: AppTextStyles.titleBold,
                          )
                        ])),
                    Container(
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(user.photoUrl),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                child: ScoreCardWidget(),
                alignment: FractionalOffset.bottomCenter,
              )
            ]),
          ),
        );
}
