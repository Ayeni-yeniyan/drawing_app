import 'package:flutter/material.dart';

class LinePage extends StatelessWidget {
  const LinePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..strokeWidth = 3;

    Offset p1 = Offset(10, size.height / 2);
    Offset p2 = Offset(size.width - 10, size.height / 2);

    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
