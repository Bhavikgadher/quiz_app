import 'package:flutter/material.dart';
import 'package:quiz_app/CustomWidget/styled_text.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier(
      {super.key,
      required this.questionsIndex,
      required this.isCorrectAnswers});

  final int questionsIndex;
  final bool isCorrectAnswers;

  @override
  Widget build(BuildContext context) {
    final questionsNum = questionsIndex + 1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: isCorrectAnswers ? Colors.indigo : Colors.lime , borderRadius: BorderRadius.circular(80)),

      child: StyledText(
        questionsNum.toString(),
        14,
        colors: Colors.white70,
        align: TextAlign.center,
        weight: FontWeight.bold,
      ),
    );
  }
}
