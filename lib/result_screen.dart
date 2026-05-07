import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/result_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.userAnswers, {super.key});

  final List<String> userAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < userAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': userAnswers[i],
      });
    }

    return summary;
  }

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
    final List<Map<String, Object>> summaryData = getSummaryData();
    final int numTotalQuestions = questions.length;
    final int numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Container(
      margin: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!",
          ),
          SizedBox(height: 20),
          ResultSummary(summaryData),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: checkResult,
            child: Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
