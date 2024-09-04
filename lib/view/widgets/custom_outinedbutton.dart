import 'package:flutter/material.dart';

import '../../constansts/const_colors.dart';
import '../../constansts/text_styles.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;

  final double width;
  final double height;
  final Widget child;
  const CustomOutlinedButton({
    required this.onPressed,
    required this.width,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ConstColors.backgroundColor,
          side: const BorderSide(color: ConstColors.primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        ),
        child: child,
      ),
    );
  }
}
