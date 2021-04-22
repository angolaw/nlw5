import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/models/models.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;

  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(
            question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          ...question.answers
              .map((e) => AnswerWidget(
                    title: e.title,
                    isRight: e.isRight,
                    isSelected: false,
                  ))
              .toList()
        ],
      ),
    );
  }
}
