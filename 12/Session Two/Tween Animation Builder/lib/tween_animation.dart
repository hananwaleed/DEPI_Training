import 'package:flutter/material.dart';

class TweenAnimationExample extends StatelessWidget {
  const TweenAnimationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: 200),
          duration: const Duration(seconds: 6),
          builder: (context, value, child) {
            return Container(
              width: value,
              height: value,
              color: Colors.blue,
              child: child,
            );
          },
          child:  Center(
            child: Text("Animated Box", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
