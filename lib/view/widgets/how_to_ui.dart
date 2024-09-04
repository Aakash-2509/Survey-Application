import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../constansts/const_colors.dart';
import '../../constansts/text_styles.dart';

class HowToUI extends StatelessWidget {
  const HowToUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 300,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: ConstColors.backgroundColor,
          boxShadow: [
            BoxShadow(
                color: ConstColors.shadowColor, blurRadius: 6, spreadRadius: 3)
          ],
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color(0xFFB3DFE5),
              Color(0xFFE8E1F4),
            ],
            // transform: GradientRotation(3.14 / 4),
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "The Panel Station - Introduction",
            style: getTextTheme().headlineLarge,
            textAlign: TextAlign.center,
          ),
          Container(
            height: 50,
            width: 150.w,
            decoration: BoxDecoration(
              color: ConstColors.backgroundColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: ConstColors.grey,
                  child: Icon(
                    Icons.play_arrow,
                    color: ConstColors.primaryColor,
                  ),
                ),
                Gap(15.w),
                Text(
                  "Play Video",
                  style: getTextTheme().headlineLarge,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Text(
            'Know all about The Panel Station platform - where opinions earn and every survey brings you closer to exciting benefits.',
            style: getTextTheme().headlineSmall,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
