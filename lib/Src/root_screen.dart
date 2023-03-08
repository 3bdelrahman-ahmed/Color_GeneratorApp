import 'package:color_randomgenrator/Views/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class RootScreen extends StatefulWidget{
  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}