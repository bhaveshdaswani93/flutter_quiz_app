import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz_screen.dart';
import 'package:flutter_quiz_app/welcome_screen.dart';

class InitScreen extends StatefulWidget {
  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  String currentScreen = "welcome-screen";

  void navigateToQuizScreen() {
    setState(() {
      currentScreen = 'quiz-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return currentScreen == 'welcome-screen'
        ? WelcomeScreen(onStartQuiz: navigateToQuizScreen)
        : QuizScreen();
  }
}
