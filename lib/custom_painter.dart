import 'package:flutter/material.dart';

class MyInteractiveCustomPainter extends CustomPainter {
  final Color circleColor;
  final Color lineColor;

  const MyInteractiveCustomPainter(
      {required this.circleColor, required this.lineColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = circleColor
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 4,
      paint,
    );

    final rect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.width / 2,
      height: size.height / 4,
    );
    canvas.drawRect(rect, paint);

    final linePaint = Paint()
      ..color = lineColor
      ..strokeWidth = 2.0;
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width, 0),
      linePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Always repaint for interactivity
  }
}
