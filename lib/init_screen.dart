import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/quiz_screen.dart';
import 'package:flutter_quiz_app/welcome_screen.dart';
import 'package:flutter_quiz_app/result_screen.dart';

class InitScreen extends StatefulWidget {
  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  String currentScreen = "welcome-screen";
  final List<String> userAnswers = [];

  void navigateToQuizScreen() {
    setState(() {
      currentScreen = 'quiz-screen';
    });
  }

  void addUserAnswer(String answer) {
    setState(() {
      userAnswers.add(answer);

      // if user answer all question then show to result screen
      if (userAnswers.length == questions.length) {
        currentScreen = 'result-screen';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenToDisplay = WelcomeScreen(onStartQuiz: navigateToQuizScreen);

    if (currentScreen == 'quiz-screen') {
      screenToDisplay = QuizScreen(onUserChooseAnswer: addUserAnswer);
    } else if (currentScreen == 'result-screen') {
      screenToDisplay = ResultScreen(userAnswers);
    }

    return screenToDisplay;
  }
}
