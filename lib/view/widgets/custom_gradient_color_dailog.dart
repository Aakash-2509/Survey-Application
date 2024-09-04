import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';

class CustomGradientDialog extends StatelessWidget {
  const CustomGradientDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // backgroundColor: Colors.transparent, // Transparent background
      contentPadding: EdgeInsets.zero,
      content: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0x400194A8), // 25% opacity for Color(0xFF0194A8)
              Color(0x70B19CD9), // 25% opacity for Color(0xFFB19CD9)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Ways to Boost Your Points:',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: ConstColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      decoration: TextDecoration.none,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Complete at least '),
                      TextSpan(
                        text: '5 surveys this ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'month',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' and earn an additional '),
                      TextSpan(
                        text: '300 points',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '.'),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "The cherry on top?",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      color: ConstColors.black,
                      fontSize: 18,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Maintain this level for the next consecutive 3 months and ',
                      ),
                      TextSpan(
                        text: 'receive an extra \$5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
