import 'dart:developer';

import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/view/widgets/custom_claim_request_dailog.dart';
import 'package:borderaccess/view/widgets/custom_claim_vocher_dailog.dart';
import 'package:borderaccess/view/widgets/custom_convert_to_points_dailog.dart';
import 'package:borderaccess/view/widgets/custom_discover_journey_ahead_dailog.dart';
import 'package:borderaccess/view/widgets/custom_email_sent_dailog.dart';
import 'package:borderaccess/view/widgets/custom_explore_dailogbox.dart';
import 'package:borderaccess/view/widgets/custom_gradient_color_dailog.dart';
import 'package:borderaccess/view/widgets/custom_pin_input.dart';
import 'package:borderaccess/view/widgets/custom_quick_poll.dart';
import 'package:borderaccess/view/widgets/custom_re_subscribe.dart';
import 'package:borderaccess/view/widgets/custom_rejoin_dailog.dart';
import 'package:borderaccess/view/widgets/custom_reset_password_dailog.dart';
import 'package:borderaccess/view/widgets/custom_scanner_dailog.dart';
import 'package:borderaccess/view/widgets/custom_survey_dailog.dart';
import 'package:borderaccess/view/widgets/custom_thank_you_dailog.dart';
import 'package:borderaccess/view/widgets/custom_winner_dailog.dart';
import 'package:borderaccess/view/widgets/quick_poll_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'view/widgets/custom_gift_dailog.dart';
import 'view/widgets/custom_predict_play_dailog.dart';
import 'view/widgets/custom_unsubscribe_dailog.dart';

class Dummyscreen extends StatefulWidget {
  const Dummyscreen({super.key});

  @override
  State<Dummyscreen> createState() => _DummyscreenState();
}

class _DummyscreenState extends State<Dummyscreen> {
  final mobileController = TextEditingController();
  final pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dummy Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ....................................
            IconButton(
              onPressed: _showMobileInputDialog,
              icon: const Icon(Icons.widgets),
            ),
            // Iconbutton for SocailMEdia
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const ExploreDialog(); // Use the new widget
                  },
                );
              },
              icon: const Icon(Icons.add_box),
            ),
            Row(
              children: [
                //Quick Poll dailog
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const MyDialog(); // Use the new widget
                      },
                    );
                  },
                  icon: const Icon(Icons.access_time_filled_rounded),
                ),
                // Boots Your Points Dialog
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomGradientDialog(); // Use the new widget
                      },
                    );
                  },
                  icon: const Icon(Icons.energy_savings_leaf),
                ),
                // Re-subscribe Dailog Box
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomGradientDialog(); // Use the new widget
                      },
                    );
                  },
                  icon: const Icon(Icons.energy_savings_leaf),
                ),
              ],
            ),
            // Discover Journey ahead dailog
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomDiscoverJourneyAheadDialog(); // Use the new widget
                      },
                    );
                  },
                  icon: const Icon(Icons.access_alarm_outlined),
                ),
                // Quick Poll Results
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomPollDialog(); // Use the new widget
                      },
                    );
                  },
                  icon: const Icon(Icons.poll),
                ),
                // Scaaner dailog
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const QRScannerDialog(); // Use the new widget
                      },
                    );
                  },
                  icon: const Icon(Icons.qr_code_scanner_outlined),
                ),
                // Quick Survey Dailog
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomSurveyDialog(
                          buttonText: "Get Started",
                          title: 'Quick Survey, Instant Rewards!',
                          description:
                              'Take just a few minutes to complete our survey and instantly earn X points!',
                          onPressed: () {
                            Navigator.of(context)
                                .pop(); // Close the dialog or add your navigation logic
                          },
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.supervised_user_circle),
                ),
                // Bid to Win Dailog
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomSurveyDialog(
                          buttonText: "Play Now",
                          title: 'Bid to win',
                          description:
                              'Lorem ipsum dolor sit amet consectetur. Et nam mauris sem ridiculus at. Aliquam dolor.',
                          imageUrl: "assets/bid.png",
                          onPressed: () {
                            Navigator.of(context)
                                .pop(); // Close the dialog or add your navigation logic
                          },
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.hardware_sharp),
                ),
                // Reward Dailog box
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomGiftDailog();
                      },
                    );
                  },
                  icon: const Icon(Icons.card_giftcard),
                ),
                // Predict play dailog
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomPredictPlayDailog(
                          buttonText: "dsdf",
                          onPressed: () {},
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.remove_red_eye_outlined),
                ),
              ],
            ),
            Row(
              children: [
                // Re-subscribe Email Dailog box
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomEmailDialog();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.email,
                  ),
                ),
                // Email sent Dailog box
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomEmailSentDailog();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.send_rounded,
                  ),
                ),
                // Reset password Dailog Box
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomResetPasswordDialog();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.password,
                  ),
                ),
                // Rejoin Dailog Box
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomRejoinDialog();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.join_full_rounded,
                  ),
                ),
                // Unsubscribe Reason Dailog Box
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomUnsubscribeDialog();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.undo,
                  ),
                ),
                // Thank you for following on social media dailog box
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomThankYouDialog();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.follow_the_signs,
                  ),
                ),
                // Claim request declined dailog box
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomClaimRequestDialog();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.error_outline_outlined,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                // Claim vocher Gift card dailog box
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomClaimVocherDailog();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.card_giftcard_outlined,
                  ),
                ),
                // Winner Pop up
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomWinnerDailog();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.wind_power_outlined,
                  ),
                ),
                // Convert to points dailog
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomConvertToPointsDailog();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.attach_money_outlined,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _showMobileInputDialog() {
    int _selectedValue = 0; // To track the selected radio button

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Get X Instant Points by verifying your mobile number',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
                  SizedBox(height: 15),
                  Text("Select your preferred mode for receiving OTP",
                      style: TextStyle(
                          color: ConstColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              content: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio<int>(
                              value: 1,
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                            ),
                            const Text(
                              'WhatsApp',
                              style: TextStyle(decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio<int>(
                              value: 2,
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                            ),
                            const Text(
                              'SMS',
                              style: TextStyle(decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 45,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: Colors.grey.withOpacity(0.3),
                            border: Border.all(
                              color: ConstColors.black, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child: const Padding(
                            padding:
                                EdgeInsets.only(left: 4, bottom: 5, top: 12),
                            child: Text(
                              '+91',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 45,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: Colors.grey.withOpacity(0.3),
                            border: Border.all(
                              color: ConstColors.black, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 7, bottom: 10),
                            child: TextField(
                              controller: mobileController,
                              keyboardType: TextInputType.phone,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(
                                    10), // Limit to 10 characters
                              ],
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Mobile Number',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: ConstColors.black,
                            border: Border.all(
                              color: ConstColors.black, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              _sendOTP();
                            },
                            child: const Text(
                              'Get OTP',
                              style:
                                  TextStyle(color: ConstColors.backgroundColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _sendOTP() {
    // Simulate sending OTP
    log('OTP sent to ${mobileController.text}');
    _showPinInputDialog();
    mobileController.clear();
  }

  void _showPinInputDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return PinInputWidget(
          pinController: pinController,
          onCompleted: (pin) {
            // Handle PIN input completion here
            log('PIN entered: $pin');
            // Navigator.of(context).pop(); // Close the dialog
          },
        );
      },
    );
  }
}
