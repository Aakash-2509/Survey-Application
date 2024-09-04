import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import '../../../widgets/custom_roundedbutton.dart';

class AvaliableSurveyWidget extends StatelessWidget {
  const AvaliableSurveyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
      margin: EdgeInsets.only(bottom: 10),
      width: 360.w,
      decoration: BoxDecoration(
          border: Border.all(color: ConstColors.shadowColor),
          color: ConstColors.backgroundColor,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "5-7 Minutes Survey",
                  style:
                      getTextTheme().headlineLarge!.copyWith(fontSize: 12.sp),
                ),
                Row(children: [
                  Image.asset(
                    'assets/home/points.png',
                    height: 30,
                    color: ConstColors.primaryColor,
                  ),
                  Text('50 Points',
                      style: getTextTheme()
                          .headlineLarge!
                          .copyWith(color: ConstColors.primaryColor))
                ]),
                Text(
                  "Survey #123",
                  style:
                      getTextTheme().headlineMedium!.copyWith(fontSize: 12.sp),
                ),
              ],
            ),
          ),
          RoundedButton(
              width: 120.w,
              height: 40,
              press: () {},
              text: Text(
                "Start Now",
                style: getTextTheme().displayLarge,
              ))
        ],
      ),
    );
  }
}
