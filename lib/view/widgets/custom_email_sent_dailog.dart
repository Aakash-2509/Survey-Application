import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';

class CustomEmailSentDailog extends StatelessWidget {
  const CustomEmailSentDailog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ConstColors.backgroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Email Sent',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            child: Image.asset(
              fit: BoxFit.contain,
              "assets/email_sent.png",
            ),
          ),
          const Text(
            "An email has been sent to your designated email address with instructions to re-subscribe",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
