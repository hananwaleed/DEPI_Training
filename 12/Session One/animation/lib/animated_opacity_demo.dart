import 'package:flutter/material.dart';

class AnimatedOpacityDemo extends StatefulWidget {
  const AnimatedOpacityDemo({super.key});

  @override
  State<AnimatedOpacityDemo> createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: visible ? 1.0 : 0.0,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.purple,
            alignment: Alignment.center,
            child: const Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            visible = !visible;
          });
        },
        child: Icon(Icons.visibility),
      ),
    );
  }
}
