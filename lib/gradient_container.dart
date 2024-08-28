import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignmrnt = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  //const GradientContainer({super.key, required this.colors});// when using named arguments

  const GradientContainer.purple()
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  //final List<Color> colors; // can not be edit final so use const

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignmrnt,
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/dice-2.png',
          width: 200,
          //height: 200,
        ),
      ),
    );
  }
}
