import 'package:flutter/material.dart';

class AnimatedBoxDemo extends StatefulWidget {
  const AnimatedBoxDemo({super.key});

  @override
  State<AnimatedBoxDemo> createState() => _AnimatedBoxDemoState();
}

class _AnimatedBoxDemoState extends State<AnimatedBoxDemo> {
  bool isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: AnimatedContainer(
          duration:  Duration(seconds: 1),
          width: isBig ? 200 : 100,
          height: isBig ? 200 : 100,
          decoration: BoxDecoration(
            color: isBig ? Colors.blue : Colors.pink,
            borderRadius: BorderRadius.circular(isBig ? 0 : 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isBig = !isBig;
          });
        },
        child:  Icon(Icons.play_arrow),
      ),
    );
  }
}
