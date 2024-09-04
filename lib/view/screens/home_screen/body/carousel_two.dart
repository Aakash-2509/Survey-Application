import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import 'current_index_indicator.dart';
import 'dot_widget.dart';

class CarouselWidgetTwo extends StatelessWidget {
  const CarouselWidgetTwo({
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
            margin: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: ConstColors.backgroundColor,
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF0194A8), Color(0xFFB19CD9)],
              ),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 196, 196, 196),
                    blurRadius: 4,
                    offset: Offset(1, 2),
                    spreadRadius: 1)
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Have you reviewed\nyour upcoming\nmilestone benefits?",
                    style: getTextTheme()
                        .headlineLarge!
                        .copyWith(color: ConstColors.backgroundColor),
                  ),
                  Gap(10),
                  Text(
                    "Click here for exclusive perks!",
                    style: getTextTheme()
                        .headlineMedium!
                        .copyWith(color: ConstColors.textColor2),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CurrentPageWidget(
                        currentIndex: '1',
                        bgcolor: ConstColors.backgroundColor,
                        textColor: ConstColors.primaryColor,
                      ),
                      dotWidget(),
                      dotWidget(),
                    ],
                  ),
                  Gap(10),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: ConstColors.backgroundColor,
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF0194A8), Color(0xFFB19CD9)],
              ),
              boxShadow: const [
                BoxShadow(
                    color: ConstColors.shadowColor,
                    blurRadius: 4,
                    offset: Offset(1, 2),
                    spreadRadius: 1)
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ways to boost\nyour points",
                    style: getTextTheme()
                        .headlineLarge!
                        .copyWith(color: ConstColors.backgroundColor),
                  ),
                  Gap(10),
                  Text(
                    "Stay Updated and Earn Points - Follow Us Today!",
                    style: getTextTheme()
                        .headlineMedium!
                        .copyWith(color: ConstColors.textColor2),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      dotWidget(),
                      CurrentPageWidget(
                        currentIndex: '2',
                        bgcolor: ConstColors.backgroundColor,
                        textColor: ConstColors.primaryColor,
                      ),
                      dotWidget(),
                    ],
                  ),
                  Gap(10),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: ConstColors.backgroundColor,
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF0194A8), Color(0xFFB19CD9)],
              ),
              boxShadow: const [
                BoxShadow(
                    color: ConstColors.shadowColor,
                    blurRadius: 4,
                    offset: Offset(1, 2),
                    spreadRadius: 1)
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Check Your TPS Levels",
                    style: getTextTheme()
                        .headlineLarge!
                        .copyWith(color: ConstColors.backgroundColor),
                  ),
                  Gap(10),
                  Text(
                    "Track Your Monthly Level Benefits!",
                    style: getTextTheme()
                        .headlineMedium!
                        .copyWith(color: ConstColors.textColor2),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      dotWidget(),
                      dotWidget(),
                      CurrentPageWidget(
                        currentIndex: '3',
                        bgcolor: ConstColors.backgroundColor,
                        textColor: ConstColors.primaryColor,
                      ),
                    ],
                  ),
                  Gap(10),
                ],
              ),
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
