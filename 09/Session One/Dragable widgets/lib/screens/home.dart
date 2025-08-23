import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color targetColor = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Drag & Drop ",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // دوائر ألوان متناسقة
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ColorDraggable(color: Color.fromARGB(255, 87, 84, 84)), // Purple
              ColorDraggable(color: Color.fromARGB(255, 87, 100, 84)), // Green
              ColorDraggable(color: Color.fromARGB(255, 87, 120, 84)), // Orange
            ],
          ),

          // الصندوق الهدف
          DragTarget<Color>(
            onAccept: (color) {
              setState(() => targetColor = color);
            },
            builder: (context, _, __) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: targetColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: const Offset(3, 3),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Drop here",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

/// ويدجت دائرة قابلة للسحب
class ColorDraggable extends StatelessWidget {
  final Color color;
  const ColorDraggable({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Draggable<Color>(
      data: color,
      feedback: _buildCircle(color, 70, withShadow: true),
      childWhenDragging: _buildCircle(color.withOpacity(0.3), 70),
      child: _buildCircle(color, 70),
    );
  }

  static Widget _buildCircle(
    Color color,
    double size, {
    bool withShadow = false,
  }) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: withShadow
            ? [
                BoxShadow(
                  color: color.withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(3, 3),
                ),
              ]
            : [],
      ),
    );
  }
}
