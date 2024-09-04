import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';

class CustomClaimRequestDialog extends StatelessWidget {
  const CustomClaimRequestDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "Claim request declined",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          IconButton(
            iconSize: 20,
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog when pressed
            },
            icon: const Icon(
              Icons.close,
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
              children: [
                TextSpan(
                  text: "Please complete at least ",
                ),
                TextSpan(
                  text: "#SurveyCompletionThreshold#",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: " consumer survey to claim this voucher",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: const BorderSide(color: ConstColors.black),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              backgroundColor: WidgetStateProperty.all(ConstColors.darkGrey),
            ),
            onPressed: () {},
            child: const Text(
              "Take a survey",
              style: TextStyle(
                color: ConstColors.backgroundColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
