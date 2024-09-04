import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';

class MyDailyAgendaBanner extends StatelessWidget {
  const MyDailyAgendaBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      height: 200.0,
      width: 360.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0194A8),
              Color(0xFFB19CD9),
            ]),
        // border: Border.all(
        //   color: kHintColor,
        // ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Daily Agenda",
                        style: getTextTheme().headlineLarge,
                      ),
                      Gap(10),
                      Text(' • Complete all the tasks',
                          style: getTextTheme().headlineMedium),
                      Gap(5),
                      Text(' • Complete all the tasks',
                          style: getTextTheme().headlineMedium),
                      Gap(5),
                      Text(' • Complete all the tasks',
                          style: getTextTheme().headlineMedium),
                      Row(
                        children: [
                          Text('   TPS Teal Tick',
                              style: getTextTheme()
                                  .headlineLarge!
                                  .copyWith(fontSize: 14.sp)),
                          Gap(5),
                          const Icon(
                            Icons.check_circle,
                            color: ConstColors.primaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 75,
                    width: 75,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ConstColors.backgroundColor,
                        image: DecorationImage(
                            image:
                                AssetImage('assets/dailyagenta/calender.png')),
                        boxShadow: const [
                          BoxShadow(
                              color: ConstColors.shadowColor,
                              blurRadius: 4,
                              offset: Offset(0, 4))
                        ]),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
