import 'package:flutter/material.dart';

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
