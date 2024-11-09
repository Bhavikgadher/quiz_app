import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.num, {super.key, required this.colors, required this.align});

  final String text;
  final double num;
  final Color colors;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colors,
        fontSize: num,
      ),
      textAlign: align,
    );
  }
}
