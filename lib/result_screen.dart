import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.userAnswers, {super.key});

  final List<String> userAnswers;

  void checkResult() {
    for (int i = 0; i < userAnswers.length; i++) {
      if (userAnswers[i] != questions[i].answers[0]) {
        print('Wrong answer for question ${i + 1}');
      } else {
        print('Correct answer for question ${i + 1}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Result Screen"),
        Center(
          child: Text('You did it!'),
        ),
        TextButton(
          onPressed: checkResult,
          child: Text('Restart Quiz'),
        ),
      ],
    );
  }
}
