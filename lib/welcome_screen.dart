import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  final VoidCallback onStartQuiz;

  const WelcomeScreen({super.key, required this.onStartQuiz});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png', // Replace with your image path
          width: 200,
          // height: 200,
          color: const Color.fromARGB(93, 255, 255, 255),
        ),
        SizedBox(height: 20),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: onStartQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: BorderSide(color: Colors.transparent),
          ),
          icon: Icon(Icons.arrow_forward),
          label: Text('Get Started'),
        ),
      ],
    );
  }
}
