// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:color_randomgenrator/Commponents/hexa_row.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

var value1=255;
var value2=255;
var value3=255;
var value4=255;

String text="Color appears here";
class FirstScreen extends StatefulWidget{
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
 
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/cover.jpeg'),
          fit: BoxFit.cover,
          opacity: 0.75,
          )
        ),
        child: 
           Column(mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
               Container(
                  margin: EdgeInsets.only(top: 70),
                  child:colorizeAnimation()
              ),
                 SizedBox(height: 80,),
                 Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    boxShadow:const  [
                     BoxShadow(
                        blurRadius: 2,
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: randomer(),
                  ),
                  alignment: Alignment.center,
                  child: Text(text,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              
              SizedBox(height: 30,),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color:Colors.blueGrey[600],
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                alignment: Alignment.center,
                child: GestureDetector(
                 child: Text('Generate Color',
                 style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                 ),
                 ),
                 onTap: () {
                   setState(() {
                     value1=Random().nextInt(255);
                     value2=Random().nextInt(255);
                     value3=Random().nextInt(255);
                     value4=Random().nextInt(255);
                     text="";
                   });
                 },
                ),
              ),
            HexaRow()
            ],
          ),
        
      ),
    );
    
  }
}
 Color randomer(){
   return Color.fromARGB(value1, value2,value3, value4);
}
  Widget colorizeAnimation() {
    const colorizeColors = [
      Colors.black,
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 35.0,
      fontWeight: FontWeight.bold
    );
    return  AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'Generator App',
              textStyle: colorizeTextStyle,
              colors: colorizeColors, 
            ),
          ],
          repeatForever: true,
        );
  }
   