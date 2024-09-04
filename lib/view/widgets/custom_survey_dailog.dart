import 'package:flutter/material.dart';
import 'package:borderaccess/constansts/const_colors.dart';

class CustomSurveyDialog extends StatelessWidget {
  final String title;
  final String description;
  final String? imageUrl; // Optional image URL
  final String buttonText; // Dynamic button text
  final VoidCallback onPressed;

  const CustomSurveyDialog({
    Key? key,
    required this.title,
    required this.description,
    this.imageUrl,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[850], // Dark grey background color
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center, // Center align vertically
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none,
              fontSize: 18,
              color: Colors.white, // Text color
            ),
            textAlign: TextAlign.center, // Center align text
          ),
          const SizedBox(height: 16),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
              fontSize: 14,
              color: Colors.white, // Text color
            ),
          ),
          if (imageUrl != null) ...[
            const SizedBox(height: 16),
            Image.asset(imageUrl!), // Display image if imageUrl is provided
          ],
          const SizedBox(height: 24),
          SizedBox(
            width: 150,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    ConstColors.backgroundColor), // Example color
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              onPressed: onPressed,
              child: Text(
                buttonText,
                style: const TextStyle(color: ConstColors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Example usage:
// showDialog(
//   context: context,
//   builder: (BuildContext context) {
//     return CustomSurveyDialog(
//       title: 'Quick Survey, Instant Rewards!',
//       description:
//           'Take just a few minutes to complete our survey and instantly earn X points!',
//       imageUrl: 'assets/images/survey_image.jpg', // Replace with your asset path
//       buttonText: 'Get Started',
//       onPressed: () {
//         Navigator.of(context).pop(); // Close the dialog or add your navigation logic
//       },
//     );
//   },
// );
