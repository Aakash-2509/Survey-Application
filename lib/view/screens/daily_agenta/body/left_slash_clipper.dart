import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width, 0); // Top line with a cut
    path.lineTo(size.width, 0); // Diagonal line to the center
    path.lineTo(size.width - 30, size.height); // Bottom line with a cut
    path.lineTo(0, size.height); // Bottom line
    path.close(); // Closing the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}