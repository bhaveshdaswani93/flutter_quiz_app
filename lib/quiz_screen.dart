import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'This is Test question',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          AnswerButton(
            answerText: "Answer 1",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "Answer 2",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "Answer 3",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
