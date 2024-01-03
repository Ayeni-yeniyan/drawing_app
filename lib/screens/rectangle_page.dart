import 'package:flutter/material.dart';

class RectanglePage extends StatelessWidget {
  const RectanglePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RectanglePainter(),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    Offset c = Offset(size.width / 2, size.height / 2);
    double h = size.height - 200;
    double w = size.width - 100;
    Rect rect = Rect.fromCenter(center: c, height: h, width: w);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
