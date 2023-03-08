import 'package:color_randomgenrator/Commponents/textdesign.dart';
import 'package:color_randomgenrator/Views/first_screen.dart';
import 'package:flutter/material.dart';

class HexaRow extends StatelessWidget{
  const HexaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextDesign('#'),
        TextDesign(value1.toRadixString(16)),
        TextDesign(value2.toRadixString(16)),
        TextDesign(value3.toRadixString(16)),
        TextDesign(value4.toRadixString(16)),
      ],
    );
  }
}