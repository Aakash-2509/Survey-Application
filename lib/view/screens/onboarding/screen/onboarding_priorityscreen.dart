import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../constansts/text_styles.dart';
import '../../../../global/appString.dart';
import '../../../widgets/custom_roundedbutton.dart';

class OnboardingPriorityscreen extends StatefulWidget {
  const OnboardingPriorityscreen({super.key});

  @override
  State<OnboardingPriorityscreen> createState() =>
      _OnboardingPriorityscreenState();
}

class _OnboardingPriorityscreenState extends State<OnboardingPriorityscreen> {
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
                      Appstring.welcometopanelstation,
                      style: getTextTheme().displayLarge!.copyWith(
                          fontSize: 22, color: ConstColors.primaryColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 32.h),
                  // Description Text
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0.sp),
                    child: Text.rich(
                      TextSpan(
                        text: Appstring.begindashboard,
                        style:
                            getTextTheme().displaySmall!.copyWith(fontSize: 16),
                        children: [
                          TextSpan(
                            text: Appstring.instantboost,
                            style: getTextTheme()
                                .displayLarge!
                                .copyWith(fontSize: 16),
                          ),
                          TextSpan(
                            text: Appstring.completingsurvey,
                            style: getTextTheme()
                                .displaySmall!
                                .copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 32.h),

                  Text(
                      Appstring.thissurveycollects,
                      style:
                          getTextTheme().displaySmall!.copyWith(fontSize: 16),
                      textAlign: TextAlign.center),
                  SizedBox(height: 32.h),
                  // Elevated Button
                  RoundedButton(
                    width: 343.w,
                    press: () {
                      context.push('/priorityprofiler1');
                    },
                    text: Text(
                      Appstring.start,
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
