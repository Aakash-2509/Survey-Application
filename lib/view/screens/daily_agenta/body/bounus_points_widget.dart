import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import 'arrow_clipper.dart';

class BonusPointsWidget extends StatefulWidget {
  const BonusPointsWidget({super.key});

  @override
  _BonusPointsWidgetState createState() => _BonusPointsWidgetState();
}

class _BonusPointsWidgetState extends State<BonusPointsWidget> {
  double _progress = 1; // Initial progress (3/7)

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      width: 360.w,
      height: 230,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/dailyagenta/ bonusbackground.jpeg',
          ),
          invertColors: true,
          // colorFilter: ColorFilter.mode(ConstColors.black.withOpacity(0.5),
          //   BlendMode.darken), // Replace with your actual image path
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My TPS Teal Ticks: ${_progress.toInt()}/7',
                style: getTextTheme().displayLarge),
            SizedBox(height: 10),
            Container(
                height: 30,
                width: 360.w,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF0194A8),
                        Color(0xFFB19CD9),
                      ]),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  margin: EdgeInsets.all(
                    2,
                  ),
                  decoration: BoxDecoration(
                    color: ConstColors.backgroundColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            margin: EdgeInsets.all(
                              2,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: ConstColors.primaryColor),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 324.w * (_progress / 7),
                            margin: EdgeInsets.all(
                              2,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF0194A8),
                                    Color(0xFFB19CD9),
                                  ]),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 18,
                                  width: 18,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFF0194A8),
                                          Color(0xFFB19CD9),
                                        ]),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ConstColors.backgroundColor,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: List.generate(6, (index) {
                            return Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: (_progress.toInt() - 1) == index
                                      ? ConstColors.backgroundColor
                                      : ConstColors.shadowColor),
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                )),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Complete 7 days to\nEarn 50 Bonus Points',
                    style: getTextTheme().displayLarge),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: ClipPath(
                          clipper: ArrowClipper(),
                          child: Container(
                            width: 10,
                            height: 20,
                            color: Color(0xFF00677E),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFF00677E),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text('50 Points',
                          style: getTextTheme().headlineMedium!.copyWith(
                                color: ConstColors.backgroundColor,
                              )),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Text(
                '* Take at least 1 consumer survey to start getting\n  bonus points credited in your account',
                style: getTextTheme().headlineSmall!.copyWith(
                      color: ConstColors.backgroundColor,
                    )),
          ],
        ),
      ),
    );
  }
}
