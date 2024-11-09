import 'package:flutter/material.dart';
import 'package:quiz_app/CustomWidget/styled_text.dart';

class StyledElevatedBtn extends StatelessWidget {
  const StyledElevatedBtn(
      {required this.text,
      required this.onTap,
      super.key,
      required this.colorBg,
      required this.colorFg});

  final String text;
  final void Function() onTap;
  final Color colorBg;
  final Color colorFg;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: colorBg,
          foregroundColor: colorFg,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: StyledText(
        text,
        18,
        colors: Colors.white60,
        align: TextAlign.center,
      ),
    );
  }
}
