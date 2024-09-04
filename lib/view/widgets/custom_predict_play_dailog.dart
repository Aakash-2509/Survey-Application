import 'package:flutter/material.dart';
import '../../constansts/const_colors.dart';

class CustomPredictPlayDailog extends StatelessWidget {
  final String? imageUrl; // Optional image URL
  final String buttonText; // Dynamic button text
  final VoidCallback onPressed;

  const CustomPredictPlayDailog({
    super.key,
    this.imageUrl,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Stack(
        children: <Widget>[
          // Background image with overlay
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  'assets/Frame.png', // Replace with your image path
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 250, // Adjust height as needed
                ),
              ),
            ],
          ),
          // Overlay content
          Positioned(
            bottom: 10,
            left: 65,
            child: SizedBox(
              width: 150,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                      ConstColors.backgroundColor),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Play Now",
                  style: TextStyle(
                    color: ConstColors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 14
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
