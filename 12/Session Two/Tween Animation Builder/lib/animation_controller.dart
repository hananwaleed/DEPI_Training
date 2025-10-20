import 'package:flutter/material.dart';

class AnimationControllerExample extends StatefulWidget {
  const AnimationControllerExample({super.key});

  @override
  State<AnimationControllerExample> createState() => _AnimationControllerExampleState();
}

class _AnimationControllerExampleState extends State<AnimationControllerExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this, 
      duration: const Duration(seconds: 2),
    );

   
    _animation = Tween<double>(begin: 0, end: 300).animate(_controller);


    _controller.forward();
  }

  @override
  void dispose() {
  
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            margin: EdgeInsets.only(left: _animation.value),
            width: 100,
            height: 100,
            color: Colors.blue,
          );
        },
      ),
    );
  }
}
