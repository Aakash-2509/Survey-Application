import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import 'current_index_indicator.dart';
import 'dot_widget.dart';

class CarouselWidgetOne extends StatelessWidget {
  const CarouselWidgetOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CarouselSlider(
        options: CarouselOptions(
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            clipBehavior: Clip.antiAlias,
            aspectRatio: .8,
            enlargeCenterPage: false,
            enableInfiniteScroll: true,
            autoPlay: false,
            onPageChanged: (index, reason) {},
            viewportFraction: 1),
        items: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: ConstColors.backgroundColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                    color: ConstColors.shadowColor,
                    blurRadius: 4,
                    offset: Offset(1, 2),
                    spreadRadius: 1)
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: -26,
                  right: -26,
                  child: Image.asset(
                    'assets/home/c1.png',
                    width: 126.sp,
                    height: 126.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Verify Your\nMobile Number",
                        style: getTextTheme().headlineLarge,
                      ),
                      Gap(10),
                      Text(
                        "Earn X Points by Sharing Your Mobile Number!",
                        style: getTextTheme().headlineMedium,
                      ),
                      Gap(10),
                      Row(
                        children: [
                          CurrentPageWidget(
                            currentIndex: '1',
                            bgcolor: ConstColors.primaryColor,
                            textColor: ConstColors.backgroundColor,
                          ),
                          dotWidget(),
                          dotWidget(),
                        ],
                      ),
                      Gap(10),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: ConstColors.backgroundColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                    color: ConstColors.shadowColor,
                    blurRadius: 4,
                    offset: Offset(1, 2),
                    spreadRadius: 1)
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 2,
                  right: -47,
                  child: Image.asset(
                    'assets/home/c2.png',
                    width: 126.sp,
                    height: 126.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Follow On\nSocial Media",
                        style: getTextTheme().headlineLarge,
                      ),
                      Gap(10),
                      Text(
                        "Stay Updated and Earn Points - Follow Us Today!",
                        style: getTextTheme().headlineMedium,
                      ),
                      Gap(10),
                      Row(
                        children: [
                          dotWidget(),
                          CurrentPageWidget(
                            currentIndex: '2',
                            bgcolor: ConstColors.primaryColor,
                            textColor: ConstColors.backgroundColor,
                          ),
                          dotWidget(),
                        ],
                      ),
                      Gap(10),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: ConstColors.backgroundColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                    color: ConstColors.shadowColor,
                    blurRadius: 4,
                    offset: Offset(1, 2),
                    spreadRadius: 1)
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: -47,
                  child: Image.asset(
                    'assets/home/c3.png',
                    width: 126.sp,
                    height: 126.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Have you reviewed\nyour upcoming\nmilestone benefits?",
                        style: getTextTheme().headlineLarge,
                      ),
                      Gap(10),
                      Text(
                        "Click here for exclusive perks!",
                        style: getTextTheme().headlineMedium,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          dotWidget(),
                          dotWidget(),
                          CurrentPageWidget(
                            currentIndex: '3',
                            bgcolor: ConstColors.primaryColor,
                            textColor: ConstColors.backgroundColor,
                          ),
                        ],
                      ),
                      Gap(10),
                    ],
                  ),
                )
              ],
            ),
          ),
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return i;
            },
          );
        }).toList(),
      ),
    );
  }
}
