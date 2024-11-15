import 'package:flutter/material.dart';
import 'package:quiz_app/CustomWidget/styled_text.dart';
import 'package:quiz_app/questions_summary/questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswers =
        itemData['user_answer'] == itemData['correct_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionsIdentifier(
              questionsIndex: itemData['question_index'] as int,
              isCorrectAnswers: isCorrectAnswers),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledText(
                  itemData['question'] as String,
                  16,
                  colors: Colors.white,
                  align: TextAlign.center,
                  weight: FontWeight.bold,
                ),
                const SizedBox(height: 5),
                StyledText(
                  itemData['user_answer'] as String,
                  16,
                  colors: Colors.white38,
                  align: TextAlign.center,
                  weight: FontWeight.bold,
                ),
                StyledText(
                  itemData['correct_answer'] as String,
                  16,
                  colors: Colors.yellow,
                  align: TextAlign.center,
                  weight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
