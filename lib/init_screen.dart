import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz_screen.dart';
import 'package:flutter_quiz_app/welcome_screen.dart';

class InitScreen extends StatefulWidget {
  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  Widget? currentScreen;

  @override
  void initState() {
    super.initState();
    currentScreen = WelcomeScreen(onStartQuiz: navigateToQuizScreen);
  }

  void navigateToQuizScreen() {
    setState(() {
      currentScreen = QuizScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return currentScreen ??
        Container(); // Show the current screen or an empty container if null
  }
}
