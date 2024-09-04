import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class PinInputWidget extends StatefulWidget {
  final TextEditingController pinController;
  final Function(String) onCompleted;

  const PinInputWidget({
    super.key,
    required this.pinController,
    required this.onCompleted,
  });

  @override
  _PinInputWidgetState createState() => _PinInputWidgetState();
}

class _PinInputWidgetState extends State<PinInputWidget> {
  bool isCheckboxChecked = false;
  bool isOtpVerified = false;
  bool showingOtpDialog = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Your main screen content goes here
        Scaffold(
          backgroundColor: Colors.transparent, // Important for overlay effect
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  showingOtpDialog = true;
                });
              },
              child: const Text('Show OTP Dialog'),
            ),
          ),
        ),
        // Display OTP dialog if not verified
        if (!isOtpVerified && showingOtpDialog) _buildOTPDialog(context),
      ],
    );
  }

  Widget _buildOTPDialog(BuildContext context) {
    return AlertDialog(
      content: StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return SizedBox(
            width: 280,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Enter OTP here",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Pinput(
                  controller: widget.pinController,
                  length: 6,
                  obscureText: false,
                  onCompleted: widget.onCompleted,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Checkbox(
                      value: isCheckboxChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckboxChecked = value ?? false;
                        });
                      },
                    ),
                    const Expanded(
                      child: Text(
                        "I consent to receive updates via SMS, WhatsApp and App notifications, but I can change my preference anytime.",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: isCheckboxChecked
                        ? () async {
                            String otp = widget.pinController.text;
                            widget.pinController
                                .clear(); // Clear the text field

                            if (otp == '123456') {
                              // Success case
                              setState(() {
                                isOtpVerified = true;
                              });
                              Navigator.of(context)
                                  .pop(); // Close the OTP dialog
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  contentPadding: EdgeInsets.zero,
                                  titlePadding: EdgeInsets.zero,
                                  content: Container(
                                    width: 280,
                                    height: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 6,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            "assets/background_img.jpg",
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: double.infinity,
                                          ),
                                          Container(
                                            color:
                                                Colors.black.withOpacity(0.7),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "You're all set! Thanks for registering your number with us.",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    color: Colors.white,
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  "Enjoy X points as a token of appreciation!",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 20.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                TextButton(
                                                  onPressed: () {
                                                    // Clear the stack and navigate to login screen
                                                    Navigator.of(context)
                                                        .popUntil((route) =>
                                                            route.isFirst);
                                                  },
                                                  child: const Text(
                                                    "Clear",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );

                              log('OTP verified successfully.');
                            } else {
                              // Error case
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Error'),
                                  content: const Text(
                                      'Invalid OTP. Please try again.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          }
                        : null,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.disabled)) {
                            return Colors.grey; // Disabled color
                          }
                          return Colors.black.withOpacity(0.5); // Enabled color
                        },
                      ),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Verify",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
