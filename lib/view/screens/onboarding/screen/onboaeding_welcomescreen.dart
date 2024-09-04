import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/widgets/custom_outline_button.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../global/appString.dart';

class OnboardingWelcomeScreen extends StatefulWidget {
  const OnboardingWelcomeScreen({super.key});

  @override
  State<OnboardingWelcomeScreen> createState() =>
      _OnboardingWelcomeScreenState();
}

class _OnboardingWelcomeScreenState extends State<OnboardingWelcomeScreen> {
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
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(Appstring.welcome,
                      style:
                          getTextTheme().displayLarge!.copyWith(fontSize: 32.sp)),
                  SizedBox(height: 20.h),
                  Center(
                    // Center widget added here
                    child: Text(
                      Appstring.surveyforyou,
                      style:
                          getTextTheme().displaySmall!.copyWith(fontSize: 20.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  RoundedButton(
                    width: 343.w,
                    press: () {
                      context.push('/signup1');
                    },
                    text: Text(
                      Appstring.createnewacc,
                      style: getTextTheme().displayLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.sp),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: ConstColors.backgroundColor,
                            thickness: 1,
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.sp),
                          child: Text(
                            Appstring.OR,
                            style: getTextTheme()
                                .displayLarge!
                                .copyWith(fontSize: 22.sp),
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            color: ConstColors.backgroundColor,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50.h),
                  CustomOutlinedButton(
                    width: 343.w,
                    text: Appstring.continuegoogle,
                    onPressed: () {
                      // Implement your Google sign-in logic here
                    },
                    image: 'assets/onboarding/Googleicon.png', // Add Google logo path
                  ),
                  SizedBox(height: 10.h),
                  CustomOutlinedButton(
                    width: 343.w,
                    text: Appstring.continueapple,
                    onPressed: () {
                      // Implement your Apple sign-in logic here
                    },
                    image: 'assets/onboarding/appleicon.png', // Add Apple logo path
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    Appstring.alreadymember,
                    style: getTextTheme().displaySmall,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.h),
                  GestureDetector(
                    onTap: () {
                      // Handle the click event here
                     context.push("/signin");
                      // Navigate to the sign-in screen or perform any action
                    },
                    child: Text(
                      Appstring.signin,
                      style: getTextTheme().displayLarge!.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: ConstColors.backgroundColor,
                            fontSize: 20,
                          ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

