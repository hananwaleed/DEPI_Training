import 'package:animation/animated_box_demo.dart';
import 'package:animation/animated_opacity_demo.dart';
import 'package:animation/cross_fade_demo.dart';
import 'package:animation/first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: AnimatedBoxDemo(),
      // home: CrossFadeDemo(),
      // home: AnimatedOpacityDemo(),
      home: FirstPage(),
    );
  }
}
