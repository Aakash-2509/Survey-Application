import 'package:flutter/material.dart';
import '../../constansts/const_colors.dart';

class CustomRejoinDialog extends StatelessWidget {
  const CustomRejoinDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Successfully Unsubscribed",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                    text:
                        "You have successfully unsubscribed from our community. If you rejoin, just click on "),
                TextSpan(
                  text: "“rejoin“",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      " and we would ensure you are on board in no time. In case you wish to delete your information with us please write to us at",
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "dataprotectionofficer01@borderlessaccess.com",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w700,
                fontSize: 14),
          ),
        ],
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
            "Close",
            style: TextStyle(
              color: ConstColors.black,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Successfully Resubscribed",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      // IconButton(
                      //   onPressed: () {
                      //     Navigator.of(context).pop();
                      //   },
                      //   icon: const Icon(
                      //     Icons.close,
                      //   ),
                      // )
                    ],
                  ),
                  content: const Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Congratulations !",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "You are back on board ! Let’s voice our opinions to endure better tommorrow.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("OK"),
                    ),
                  ],
                );
              },
            );
          },
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            backgroundColor: WidgetStateProperty.all(ConstColors.darkGrey),
          ),
          child: const Text(
            "Rejoin",
            style: TextStyle(
              color: ConstColors.backgroundColor,
            ),
          ),
        )
      ],
    );
  }
}
