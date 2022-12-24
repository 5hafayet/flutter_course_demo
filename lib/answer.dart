import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerChoosen;
  final String answer;
  const Answer(this.answerChoosen, this.answer, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: answerChoosen,
        child: Text(answer),
      ),
    );
  }
}
