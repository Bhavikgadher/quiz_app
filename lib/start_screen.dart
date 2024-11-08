import 'package:flutter/material.dart';

import 'CustomWidget/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              "assets/images/quiz-logo.png",
              width: 200,
            ),
          ),
          const SizedBox(height: 30),
          const StyledText("Hello BG Fans", 28, colors: Colors.white70),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white70),
            label: const StyledText("Start Quiz", 20, colors: Colors.white70),
            icon: const Icon(Icons.arrow_right_alt),
            iconAlignment: IconAlignment.end,
          )
        ],
      ),
    );
  }
}
