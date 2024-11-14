import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text('You ansewer x out of y'),
            const SizedBox(height: 30),
            const Text('xyz'),
            const SizedBox(height: 30),
            TextButton(
              child: const Text("Restart Quiz!"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
