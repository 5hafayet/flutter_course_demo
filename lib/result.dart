import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  static String resultText = '';
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler, {super.key});
  String get resultPhrase {
    if (resultScore < 4) {
      return 'good';
    } else if (resultScore < 6) {
      return 'better';
    } else {
      return 'best';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              'Your are: ',
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            )),
            Text(resultPhrase,
                style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.red))
          ],
        ),
        ElevatedButton(
          onPressed: resetHandler,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          child: const Text('Reset Quiz'),
        )
      ],
    );
  }
}
