import 'package:flutter/material.dart';

class CirclePage extends StatelessWidget {
  const CirclePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CirclePainter(),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    Offset c = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2 - 50;

    canvas.drawCircle(c, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
