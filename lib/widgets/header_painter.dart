import 'package:flutter/material.dart';

class PrettyHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.lightBlue[300]!,
        Colors.lightBlue[800]!
      ], // Adjust the colors here
    );

    final paint = Paint()
      ..shader =
          gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    final path = Path()
      ..lineTo(0, size.height - 45)
      ..quadraticBezierTo(
          size.width / 4, size.height - 20, size.width / 2, size.height - 40)
      ..quadraticBezierTo(
          size.width * 3 / 4, size.height - 60, size.width, size.height - 40)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawShadow(path, Colors.black.withOpacity(0.2), 10.0, false);
    canvas.drawPath(path, paint);

    final textPainter = TextPainter(
      text: const TextSpan(
        text: 'Top Players',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);
    textPainter.paint(
        canvas, Offset(20, (size.height - textPainter.height) / 2 - 20));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
