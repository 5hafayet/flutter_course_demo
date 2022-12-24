import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qIndex;
  final Function answerQuestion;

  const Quiz(this.questions, this.qIndex, this.answerQuestion, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[qIndex]['question'] as String,
        ),
        ...(questions[qIndex]['answer'] as List<Map<String, Object>>).map(
          (answer) {
            return Answer(() => answerQuestion(answer['score']),
                answer['text'] as String);
          },
        ).toList(),
      ],
    );
  }
}
