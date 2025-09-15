import 'package:flutter/material.dart';



class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'myHero',
          child: Container(
            width: 250,
            height: 250,
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              "I Grew!",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}