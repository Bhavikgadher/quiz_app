import 'package:flutter/material.dart';
import 'package:quiz_app/CustomWidget/styled_elevated_btn.dart';
import 'package:quiz_app/CustomWidget/styled_text.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(currentQuestion.questions, 28, colors: Colors.white,align: TextAlign.center,),
            const SizedBox(height: 25),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: StyledElevatedBtn(
                    text: answer,
                    onTap: () {},
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
