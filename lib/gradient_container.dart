import 'package:first_app/style_text.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignmrnt = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    startAlignment = Alignment.center;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 111, 75, 173),
            Color.fromARGB(255, 47, 19, 96),
            Color.fromARGB(255, 18, 10, 31)
          ],
          begin: startAlignment,
          end: endAlignmrnt,
        ),
      ),
      child: const Center(
        child: StyleText(),
      ),
    );
  }
}
