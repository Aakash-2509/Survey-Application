import 'package:flutter/material.dart';

import '../../constansts/const_colors.dart';

class CustomUnsubscribeDialog extends StatefulWidget {
  const CustomUnsubscribeDialog({super.key});

  @override
  _CustomUnsubscribeDialogState createState() =>
      _CustomUnsubscribeDialogState();
}

class _CustomUnsubscribeDialogState extends State<CustomUnsubscribeDialog> {
  // Define a list of reasons
  final List<String> reasons = [
    "Too many emails / surveys",
    "Asks personal questions",
    "Less points value / conversion rates",
    "Less surveys",
    "Not interested anymore",
    "Dissatisfied with customer support",
    "No time",
    "Links do not work",
    "Others (Please Specify)",
  ];

  // Define a list to keep track of the checkbox states
  List<bool> _isChecked = List<bool>.filled(9, false);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Unsubscribe",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
            ),
          )
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "We are sad to hear you are no longer interested in our surveys. We would miss you and it would be grateful if you could share your feedback with us to improve our services.",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Please select from the reason(s) below",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: List.generate(reasons.length, (index) {
                return CheckboxListTile(
                  title: Text(reasons[index]),
                  value: _isChecked[index],
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked[index] = value ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                );
              }),
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                side: const BorderSide(color: ConstColors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            backgroundColor:
                WidgetStateProperty.all(ConstColors.backgroundColor),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            "Unsubscribe & Delete",
            style: TextStyle(color: ConstColors.black),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            backgroundColor: WidgetStateProperty.all(ConstColors.darkGrey),
          ),
          onPressed: () {
            // Handle the logic when user clicks on "Submit"
            // You can access the selected reasons using the `_isChecked` list
            Navigator.of(context).pop();
          },
          child: const Text(
            "Unsubscribe",
            style: TextStyle(
              color: ConstColors.backgroundColor,
            ),
          ),
        ),
      ],
    );
  }
}
