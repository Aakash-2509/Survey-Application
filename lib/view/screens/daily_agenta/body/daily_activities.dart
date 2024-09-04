import 'package:borderaccess/view/screens/daily_agenta/body/survey_details.dart';
import 'package:borderaccess/view/widgets/accordin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import 'daily_activity_tile.dart';
import 'left_slash_clipper.dart';

class DailyActivities extends StatelessWidget {
  final List<Activity> activities = [
    Activity('Try a new survey', 'Earn', '10 Points'),
    Activity('Answer a daily poll', 'Earn', 'x Coins'),
    Activity('Answer a ranking poll', 'Earn', 'x Coins'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 181, 234, 241),
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          Row(
            children: [
              ClipPath(
                clipper: CustomShapeClipper(),
                child: Container(
                  height: 40,
                  width: 140.w,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  color: ConstColors.primaryColor, //
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Daily Activities',
                          style: getTextTheme().displayLarge),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ListView.builder(
            itemCount: activities.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    debugPrint("Tapped on Dailyacitiity tile");
                    surveyDetails(
                        "toursControlleradd", "toursControlleradd", context,
                        onClosed: (value) {});
                  },
                  child: index == 2
                      ? Container(
                          color: ConstColors.backgroundColor,
                          child: Accordion(
                            leading: SizedBox(
                              child: CircularPercentIndicator(
                                radius: 24.0,
                                lineWidth: 8.0,
                                percent: .4,
                                center: Text(
                                  "1/3",
                                  style: getTextTheme()
                                      .displayLarge!
                                      .copyWith(fontSize: 10.sp),
                                ),
                                progressColor: Color(0xFF0194A8),
                              ),
                            ),
                            title: "1 Activity completed",
                            onClick: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: ConstColors.scaffoldColor,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: ListTile(
                                    tileColor: ConstColors.scaffoldColor,
                                    selectedColor: ConstColors.scaffoldColor,
                                    leading: Icon(
                                      Icons.check_circle_rounded,
                                      color: ConstColors.primaryColor,
                                    ),
                                    title: Text("Try a new survey",
                                        style: getTextTheme()
                                            .headlineMedium!
                                            .copyWith(
                                              color: ConstColors.primaryColor,
                                            )),
                                    trailing: RichText(
                                        text: TextSpan(
                                            style: getTextTheme()
                                                .headlineSmall!
                                                .copyWith(
                                                    color: ConstColors
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.w700),
                                            children: [
                                          TextSpan(text: "Credited "),
                                          WidgetSpan(
                                              child: Image.asset(
                                            'assets/home/points.png',
                                            width: 12.sp,
                                            height: 12.sp,
                                          )),
                                          TextSpan(text: " 10 Points"),
                                        ])),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      : ActivityTile(activity: activities[index]));
            },
          ),
        ],
      ),
    );
  }
}
