import 'dart:async';
import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/widgets/common_appbar.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';



class Rankingpollendscreen extends StatefulWidget {
  const Rankingpollendscreen({super.key});

  @override
  _RankingpollendscreenState createState() => _RankingpollendscreenState();
}

class _RankingpollendscreenState extends State<Rankingpollendscreen> {
  Duration remainingTime = const Duration(hours: 24);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (remainingTime.inSeconds > 0) {
          remainingTime = remainingTime - const Duration(seconds: 1);
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String hours = twoDigits(duration.inHours);
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$hours h : $minutes min : $seconds s";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QAppBar(
        title: Text(
          "Back to Daily Bonus Zone",
          style: getTextTheme().bodyLarge,
        ),
        onTapBackButton: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Gap(10.h),
                  Image.asset(
                    "assets/dailybonuszone/Illustration.png", // Replace with your image asset path
                    height: 191.h,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Thanks for participating in our Ranking poll!",
                    style: getTextTheme().headlineLarge!.copyWith(
                          color: ConstColors.black,
                          fontSize: 24.sp,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Gap(10.h),
                  Text(
                    "You can view the poll results on our",
                    style: getTextTheme().headlineLarge,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle website link tap
                    },
                    child: Text("website",
                        style: getTextTheme().headlineLarge!.copyWith(
                              color: ConstColors.containerBottomColor,
                              decoration: TextDecoration.underline,
                            )),
                  ),
                  Text(
                    "in 15-20 days.",
                    style: getTextTheme().headlineLarge,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 92.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 16.sp,
                          left: 16.sp,
                          right: 130.sp,
                          child: Text(
                            "We've added XX coins to your account as a token of appreciation.",
                            style: getTextTheme().bodyLarge,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Positioned(
                          right: 5.sp,
                          bottom: 0,
                          child: SizedBox(
                            height: 90.h,
                            child: Image.asset(
                              "assets/dailybonuszone/points.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(20.sp),
                  Text(
                    "Take your Next Poll in",
                    style: getTextTheme().headlineLarge!.copyWith(
                          fontSize: 14.sp,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(10),
                  Container(
                    width: 360.w,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(40),
                      color: ConstColors.backgroundColor,
                    ),
                    child: Text(
                      formatDuration(remainingTime),
                      style: getTextTheme().headlineLarge!.copyWith(
                            fontSize: 20.sp,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Gap(16.sp),
              RoundedButton(
                color: ConstColors.black,
                press: () {
                  Navigator.pop(context);
                },
                text: Text(
                  "Go Back",
                  style: getTextTheme().displayLarge!.copyWith(
                        fontSize: 16.sp,
                      ),
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
