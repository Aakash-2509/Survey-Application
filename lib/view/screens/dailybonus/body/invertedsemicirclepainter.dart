
import 'package:flutter/widgets.dart';

class InvertedSemicirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color(0xFF0194A8),
          Color(0xFFB19CD9)
        ], // Replace with your gradient colors
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromCircle(
        center: Offset(size.width / 2, size.height),
        radius: size.width / 2, // Increase the radius to zoom in
      ));

    final path = Path()
      ..moveTo(0, 0)
      ..arcTo(
        Rect.fromCircle(
          center: Offset(size.width / 2, -150),
          radius: size.width / 1, // Increase the radius to zoom in
        ),
        0, // Start angle
        3.14, // Sweep angle
        false,
      )
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
