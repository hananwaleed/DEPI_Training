import 'package:flutter/material.dart';

class CrossFadeDemo extends StatefulWidget {
  const CrossFadeDemo({super.key});

  @override
  State<CrossFadeDemo> createState() => _CrossFadeDemoState();
}

class _CrossFadeDemoState extends State<CrossFadeDemo> {
  bool showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: AnimatedCrossFade(
          duration:  Duration(seconds: 1),
          firstChild: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            alignment: Alignment.center,
            child:  Text("First",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          secondChild: Container(
            width: 200,
            height: 200,
            color: Colors.pink,
            alignment: Alignment.center,
            child:  Text("Second",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          crossFadeState: showFirst
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showFirst = !showFirst;
          });
        },
        child:  Icon(Icons.swap_horiz),
      ),
    );
  }
}
