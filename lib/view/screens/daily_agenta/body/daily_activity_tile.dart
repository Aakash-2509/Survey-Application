import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';

class Activity {
  final String title;
  final String subtitle;
  final String points;

  Activity(this.title, this.subtitle, this.points);
}

class ActivityTile extends StatelessWidget {
  final Activity activity;

  ActivityTile({required this.activity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(color: ConstColors.shadowColor, width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(activity.title, style: getTextTheme().headlineMedium),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(activity.subtitle,
                      style: getTextTheme().headlineLarge!.copyWith(
                          fontSize: 14.sp, color: ConstColors.primaryColor)),
                  SizedBox(width: 4.w),
                  Image.asset(
                    'assets/home/coins.png',
                    width: 13.sp,
                    height: 13.sp,
                    color: ConstColors.primaryColor,
                  ),
                  SizedBox(width: 4.w),
                  Text(activity.points,
                      style: getTextTheme().headlineLarge!.copyWith(
                          fontSize: 14.sp, color: ConstColors.primaryColor)),
                ],
              ),
            ],
          ),
          Icon(
            CupertinoIcons.chevron_right_circle_fill,
            color: ConstColors.primaryColor,
            size: 24.sp,
          ),
        ],
      ),
    );
  }
}
