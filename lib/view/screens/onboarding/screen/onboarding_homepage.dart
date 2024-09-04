import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/global/appString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../constansts/text_styles.dart';
import '../../../widgets/custom_roundedbutton.dart';

class OnboardingHomepage extends StatefulWidget {
  const OnboardingHomepage({super.key});

  @override
  State<OnboardingHomepage> createState() => _OnboardingHomepageState();
}

class _OnboardingHomepageState extends State<OnboardingHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/onboarding/splashbackground.png', // Replace with your background image path
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // App Logo
                  Image.asset(
                    'assets/onboarding/applogo.png', // Replace with your asset image path
                    width: 328.w,
                    height: 79.h,
                  ),
                  SizedBox(height: 32.h),
                  // Welcome Text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      Appstring.Kudos,
                      style: getTextTheme().displayLarge!.copyWith(
                            fontSize: 32,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 32.h),

                  Text(Appstring.youearned,
                      style:
                          getTextTheme().displayLarge!.copyWith(fontSize: 20),
                      textAlign: TextAlign.center),
                  SizedBox(height: 32.h),
                  Text(Appstring.toexploremore,
                      style:
                          getTextTheme().displayLarge!.copyWith(fontSize: 20),
                      textAlign: TextAlign.center),
                  SizedBox(height: 30.h),
                  Image.asset(
                    'assets/onboarding/onboardimage.png', // Replace with your asset image path
                    width: 328.w,
                    height: 100.h,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 30.h),
                  // Elevated Button
                  RoundedButton(
                    width: 343.w,
                    press: () {
                      // context.push('/');
                    },
                    text: Text(
                      Appstring.continuetohome,
                      style: getTextTheme().displayLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
