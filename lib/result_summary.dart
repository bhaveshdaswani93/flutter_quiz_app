import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultSummary extends StatelessWidget {
  const ResultSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final isCorrectAnswer =
                data['user_answer'] == data['correct_answer'];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isCorrectAnswer ? Colors.green : Colors.red,
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),

                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(214, 255, 255, 255),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Your answer: ${data['user_answer']}',
                        style: TextStyle(
                          color: const Color.fromARGB(103, 255, 255, 255),
                        ),
                      ),
                      Text(
                        'Correct answer: ${data['correct_answer'] as String}',
                        style: TextStyle(
                          color: const Color.fromARGB(164, 48, 219, 85),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
