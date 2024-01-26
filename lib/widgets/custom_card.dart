import 'package:flutter/material.dart';

class CustomCard extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    paint.color = const Color.fromARGB(255, 162, 212, 247);
    path = Path();
    path.lineTo(size.width * 0.9, 0);
    path.cubicTo(
        size.width * 0.9, 0, size.width * 0.08, 0, size.width * 0.08, 0);
    path.cubicTo(
        size.width * 0.02, 0, 0, size.height * 0.09, 0, size.height * 0.13);
    path.cubicTo(
        0, size.height * 0.13, 0, size.height * 0.9, 0, size.height * 0.9);
    path.cubicTo(0, size.height * 1.04, size.width * 0.06, size.height,
        size.width * 0.07, size.height * 0.96);
    path.cubicTo(size.width * 0.11, size.height * 0.81, size.width * 0.16,
        size.height * 0.89, size.width * 0.18, size.height * 0.94);
    path.cubicTo(size.width * 0.19, size.height, size.width * 0.23, size.height,
        size.width / 4, size.height);
    path.cubicTo(size.width / 4, size.height, size.width * 0.97, size.height,
        size.width * 0.97, size.height);
    path.cubicTo(size.width * 0.98, size.height, size.width, size.height,
        size.width, size.height);
    path.cubicTo(size.width, size.height * 0.97, size.width * 1.02,
        size.height * 0.91, size.width * 0.96, size.height * 0.87);
    path.cubicTo(size.width * 0.91, size.height * 0.83, size.width * 0.92,
        size.height * 0.71, size.width * 0.96, size.height * 0.69);
    path.cubicTo(size.width, size.height * 0.67, size.width, size.height * 0.57,
        size.width, size.height * 0.52);
    path.cubicTo(size.width, size.height * 0.46, size.width, size.height * 0.29,
        size.width, size.height * 0.15);
    path.cubicTo(size.width, size.height * 0.01, size.width * 0.93, -0.01,
        size.width * 0.9, 0);
    path.cubicTo(size.width * 0.9, 0, size.width * 0.9, 0, size.width * 0.9, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
