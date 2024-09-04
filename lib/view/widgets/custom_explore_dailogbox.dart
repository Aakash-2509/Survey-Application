// explore_dialog.dart

import 'package:flutter/material.dart';
import '../../../../constansts/const_colors.dart';

class ExploreDialog extends StatelessWidget {
  const ExploreDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Image at the top of the dialog
          Stack(
            alignment: Alignment.center, // Center everything in the stack
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/explore_img.jpg', // Replace with your image URL
                  fit: BoxFit.cover,
                  width: 320,
                  height: 230,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(ConstColors.darkGrey),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Explore",
                  style: TextStyle(color: ConstColors.backgroundColor),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
