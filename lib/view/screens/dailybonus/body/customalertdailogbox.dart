import 'package:borderaccess/constansts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../constansts/const_colors.dart';
import '../../../widgets/custom_roundedbutton.dart';

class Customalertdailogbox extends StatelessWidget {
  const Customalertdailogbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 300.w,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Gap(25),
                SizedBox(
                  height: 144.h,
                  child: Image.asset(
                    'assets/dailybonuszone/Illustration.png',
                  ),
                ), // Add the appropriate image asset
                const Gap(16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: Text(
                    "Thanks for participating in our Daily poll!",
                    style: getTextTheme().headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Gap(16),
                Container(
                  color: ConstColors.appbarColor,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.zero,
            height: 170.h,
            decoration: const BoxDecoration(
              color: ConstColors.primaryColor80,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    textAlign: TextAlign.center,
                    " We've added XX coins to your account as a token of appreciation. ",
                    style: getTextTheme().headlineMedium!.copyWith(
                          fontSize: 20.sp,
                        ),
                  ),
                ),
                const Gap(10),
                RoundedButton(
                  color: ConstColors.backgroundColor,
                  width: 126.w,
                  press: () {
                    Navigator.pop(context); 
                  },
                  text: const Text(
                    "Done",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
