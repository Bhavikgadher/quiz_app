import 'package:flutter/material.dart';
import 'package:quiz_app/CustomWidget/styled_elevated_btn.dart';
import 'package:quiz_app/CustomWidget/styled_text.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(
              currentQuestion.questions,
              28,
              colors: Colors.white,
              weight: FontWeight.bold,
              align: TextAlign.center,
            ),
            const SizedBox(height: 25),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: StyledElevatedBtn(
                    text: answer,
                    onTap: () {
                      answerQuestion(answer);
                    },
                    colorBg: Colors.transparent,
                    colorFg: Colors.white70),
              );
            }),
          ],
        ),
      ),
    );
  }
}
