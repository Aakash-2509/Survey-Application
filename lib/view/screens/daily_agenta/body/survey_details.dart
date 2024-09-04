import 'dart:ui';

import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';

Future<Object?> surveyDetails(
    String heading, String discription, BuildContext context,
    {required ValueChanged onClosed}) {
  return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "Register",
      //  barrierColor: Colors.transparent,
      context: context,
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        Tween<Offset> tween;
        tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
        return SlideTransition(
          position: tween.animate(
              CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
          child: child,
        );
      },
      pageBuilder: ((context, _, __) => BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 0,
              sigmaY: 0,
            ),
            child: Center(
                child: Container(
                    width: 360.w,
                    // height: 320.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    // margin: EdgeInsets.symmetric(horizontal: 30.w),
                    decoration: BoxDecoration(
                        color: ConstColors.backgroundColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(0))),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Survey Details",
                            maxLines: 2,
                            style: getTextTheme()
                                .headlineLarge!
                                .copyWith(fontSize: 20.sp)),
                        Gap(10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 250.w,
                              child: Text('Survey ID',
                                  style: getTextTheme().headlineLarge),
                            ),
                            Text('234567', style: getTextTheme().headlineLarge),
                          ],
                        ),
                        Divider(
                          color: ConstColors.shadowColor,
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 250.w,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Survey Points',
                                      style: getTextTheme().headlineLarge),
                                  Gap(10.h),
                                  Text(
                                      'Points will be credited to you only upon completing the survey. After completion, your responses will undergo a verification process. During this period, your points will be in review status. Once verified, and if eligible, the points will be credited to your account.',
                                      style: getTextTheme().headlineMedium),
                                ],
                              ),
                            ),
                            Text('500', style: getTextTheme().headlineLarge),
                          ],
                        ),
                        Divider(
                          color: ConstColors.shadowColor,
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 250.w,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Survey Points',
                                      style: getTextTheme().headlineLarge),
                                  Gap(10.h),
                                  Text(
                                      'Points will be credited to you only upon completing the survey. After completion, your responses will undergo a verification process. During this period, your points will be in review status. Once verified, and if eligible, the points will be credited to your account.',
                                      style: getTextTheme().headlineMedium),
                                ],
                              ),
                            ),
                            Text('500', style: getTextTheme().headlineLarge),
                          ],
                        ),
                        Divider(
                          color: ConstColors.shadowColor,
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 250.w,
                              child: Text('Survey Length',
                                  style: getTextTheme().headlineLarge),
                            ),
                            Text('15 mins',
                                style: getTextTheme().headlineLarge),
                          ],
                        ),
                        Divider(
                          color: ConstColors.shadowColor,
                          height: 20.h,
                        ),
                        Gap(10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                                press: () {},
                                width: 180.w,
                                color: ConstColors.appbarColor,
                                radius: 8,
                                text: Text(
                                  "Let's Get Started",
                                  style: getTextTheme().displayLarge,
                                )),
                          ],
                        )
                      ],
                    ))),
          ))).then((onClosed));
}
