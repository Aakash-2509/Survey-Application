import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';

class CustomDiscoverJourneyAheadDialog extends StatelessWidget {
  const CustomDiscoverJourneyAheadDialog({Key? key}) : super(key: key);

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
                  'assets/discover_journey_ahead.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 250, // Adjust height as needed
                ),
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color:
                      Colors.white.withOpacity(0.7), // Adjust opacity as needed
                ),
              ),
            ],
          ),
          // Overlay content
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            height: 250, // Adjust height as needed
            color: Colors.transparent, // Ensure the background image is visible
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Discover Your Journey & Unlock the Rewards Ahead!',
                  style: TextStyle(
                    color: ConstColors.black,
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Lorem ipsum dolor sit amet consectetur. Adipiscing nec ipsum',
                  style: TextStyle(
                    color: ConstColors.black,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: 180,
                  child: ElevatedButton(
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
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
