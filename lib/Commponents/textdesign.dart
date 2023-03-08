

import 'package:color_randomgenrator/Views/first_screen.dart';
import 'package:flutter/material.dart';

class TextDesign extends StatelessWidget{
  String text;
  TextDesign(this.text){
    this.text=text;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: unnecessary_this
    return Text(this.text,
    style:const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black
    ),
    );
  }
}