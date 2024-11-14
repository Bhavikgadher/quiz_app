import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.num,
      {super.key, required this.colors, required this.align, this.weight});

  final String text;
  final double num;
  final Color colors;
  final TextAlign align;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          GoogleFonts.poppins(color: colors, fontSize: num, fontWeight: weight),
      // style: TextStyle(
      //   color: colors,
      //   fontSize: num,
      // ),
      textAlign: align,
    );
  }
}
