import 'package:flutter/material.dart';

class CustomThankYouDialog extends StatelessWidget {
  const CustomThankYouDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Column(
        children: [
          Text(
            "Thank you",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "for following us on social media!",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/pana.png",
            height: 150,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
                decoration: TextDecoration.none,
              ),
              children: [
                TextSpan(
                  text:
                      "We appreciate your support. As a token of our gratitude, we will credit your account with ",
                ),
                TextSpan(
                  text: "50 points",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: " post verification.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
