import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';

class QRScannerDialog extends StatelessWidget {
  const QRScannerDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            'Download our Mobile App',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          // Row with two black containers
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 90,
                height: 120,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    width: 130,
                    height: 50,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Image.asset(
                            height: 25,
                            'assets/google_playstore.png',
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Download on ",
                              style: TextStyle(
                                  color: ConstColors.backgroundColor,
                                  fontSize: 8),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Google Play Store",
                              style: TextStyle(
                                  color: ConstColors.backgroundColor,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    width: 130,
                    height: 50,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Image.asset(
                            height: 25,
                            'assets/apple-13 1.png',
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Download on ",
                              style: TextStyle(
                                  color: ConstColors.backgroundColor,
                                  fontSize: 9),
                            ),
                            Text(
                              "App Store",
                              style: TextStyle(
                                  color: ConstColors.backgroundColor,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Scan the QR Code or click on the link to download The Panel Station Mobile App',
            style: TextStyle(fontSize: 16, decoration: TextDecoration.none),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
