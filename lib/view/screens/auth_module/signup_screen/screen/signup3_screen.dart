import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

import '../../../../../constansts/const_colors.dart';
import '../../../../../constansts/text_styles.dart';
import '../../../../../global/appString.dart';
import '../../../../widgets/custom_roundedbutton.dart';

class Signup3Screen extends StatefulWidget {
  const Signup3Screen({super.key});

  @override
  State<Signup3Screen> createState() => _Signup3ScreenState();
}

class _Signup3ScreenState extends State<Signup3Screen> {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: getTextTheme().headlineLarge!.copyWith(
            fontSize: 20.sp,
            color: ConstColors.black1,
          ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: ConstColors.black1,
        ),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: ConstColors.primaryColor),
      borderRadius: BorderRadius.circular(8),
    );

    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.08, // 8% opacity
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/onboarding/signupbackgroun.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16.0.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // App Logo
                      Image.asset(
                        'assets/onboarding/appLogoblack.png', // Replace with your asset image path
                        width: 328.w,
                        height: 79.h,
                      ),
                      SizedBox(height: 30.h),
                      // Welcome Text
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.sp),
                        child: Text(
                          Appstring.onemorestep,
                          style: getTextTheme().displayLarge!.copyWith(
                              fontSize: 22.sp, color: ConstColors.primaryColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Text.rich(
                        TextSpan(
                          text: Appstring.sentemail,
                          style: getTextTheme()
                              .headlineMedium!
                              .copyWith(fontSize: 16.sp),
                          children: [
                            TextSpan(
                              text: 'xxx@xyzmail.com',
                              style: getTextTheme().headlineLarge!,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h),
                      Text(
                        Appstring.tofinish,
                        style: getTextTheme().headlineMedium!.copyWith(
                              fontSize: 16.sp,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20.h),

                      // OTP Input using PinPut
                      Pinput(
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        // submittedPinTheme: submittedPinTheme,
                        validator: (s) {
                          return s == '222222' ? null : Appstring.otpvalidation;
                        },
                        controller: _otpController,
                        length: 6,
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        showCursor: true,
                        // pinTheme: defaultPinTheme,
                        onCompleted: (pin) {},
                      ),

                      SizedBox(height: 30.h),
                      RoundedButton(
                        width: 343.w,
                        press: () {
                          context.push('/onboardingpriority');
                        },
                        text: Text(
                          Appstring.submit,
                          style: getTextTheme().displayLarge,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      GestureDetector(
                        onTap: () {
                          // Handle the click event here
                        },
                        child: Text(
                          Appstring.resendotp,
                          style: getTextTheme().displayLarge!.copyWith(
                                color: ConstColors.primaryColor,
                                decoration: TextDecoration.underline,
                                decorationColor: ConstColors.primaryColor,
                              ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
