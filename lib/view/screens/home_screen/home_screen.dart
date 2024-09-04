import 'dart:ui';

import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/widgets/custom_outinedbutton.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'body/avaliable_survey.dart';
import 'body/carousel_one.dart';
import 'body/carousel_three.dart';
import 'body/carousel_two.dart';
import 'body/profile_status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // CarouselController carouselController = CarouselController();
  bool isBannershow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: ConstColors.appbarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 120.w,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Badge(
                      smallSize: 10,
                      child: Image.asset(
                        'assets/home/notification.png',
                        width: 24.sp,
                        height: 24.sp,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/home/profile.png',
                        width: 34.sp,
                        height: 34.sp,
                      )),
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Gap(10),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnSwitcher(),
                  RoundedButton(
                      width: 120.w,
                      height: 40,
                      radius: 8,
                      press: () {},
                      color: ConstColors.appbarColor,
                      text: Text(
                        'Complete Now',
                        style: getTextTheme().displayLarge,
                      ))
                ],
              ),
            ),
            Gap(10.h),
            isBannershow
                ? Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                    ),
                    child: Container(
                      width: 360.w,
                      height: 260,
                      decoration: BoxDecoration(
                          color: ConstColors.backgroundColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              child: Image.asset('assets/home/bannerbg.png')),
                          Padding(
                            padding: EdgeInsets.only(top: 30.0.h, left: 20.w),
                            child: Image.asset(
                              'assets/home/bannerfg.png',
                              height: 150,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 160.w,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Starter’s Guide",
                                        style: getTextTheme().headlineLarge,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isBannershow = false;
                                          });
                                        },
                                        child: Text(
                                          "Dive into the handbook to become a pro survey taker! Take the quiz at the end to win X points.",
                                          style: getTextTheme().headlineMedium,
                                        ),
                                      ),
                                      Gap(10.h),
                                      CustomOutlinedButton(
                                        onPressed: () {},
                                        width: double.maxFinite,
                                        height: 40,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Explore',
                                              style: getTextTheme()
                                                  .headlineLarge!
                                                  .copyWith(
                                                      color: ConstColors
                                                          .primaryColor),
                                            ),
                                            const Icon(Icons.arrow_forward,
                                                color: ConstColors.primaryColor)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.w,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10.sp),
                    width: 360.w,
                    height: 300,
                    decoration: BoxDecoration(
                        color: ConstColors.backgroundColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Available Surveys",
                                  style: getTextTheme().headlineLarge),
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'View All',
                                      style: getTextTheme()
                                          .headlineLarge!
                                          .copyWith(
                                              color: ConstColors.primaryColor,
                                              fontSize: 13.sp),
                                    ),
                                    const Icon(Icons.arrow_forward,
                                        color: ConstColors.primaryColor)
                                  ],
                                ),
                              )
                            ],
                          ),
                          ListView.builder(
                              itemCount: 2,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return AvaliableSurveyWidget();
                              })
                        ]),
                  ),
            SizedBox(
              height: 320,
              child: Row(
                children: [
                  CarouselWidgetOne(),
                  CarouselWidgetTwo(),
                ],
              ),
            ),
            Gap(10.h),
            CarouselThree(),
            Gap(10.h),
            Container(
              height: 180,
              margin: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: ConstColors.backgroundColor,
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Earn more points with',
                            style: getTextTheme().headlineMedium!.copyWith(
                                  color: ConstColors.backgroundColor,
                                )),
                        Text('My Daily Agenda',
                            style: getTextTheme().headlineLarge!.copyWith(
                                  color: ConstColors.backgroundColor,
                                )),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Earn Up To 10 Points And x\nCoins Daily! ",
                              style: getTextTheme().headlineMedium!.copyWith(
                                    color: ConstColors.backgroundColor,
                                  )),
                          TextSpan(
                              text: "Start Now",
                              style: getTextTheme().headlineMedium!.copyWith(
                                  color: ConstColors.backgroundColor,
                                  fontWeight: FontWeight.w700))
                        ]))
                      ],
                    ),
                  ),
                  Image.asset("assets/home/cuate.png")
                ],
              ),
            ),
            Gap(10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      RoundedButton(
                        height: 55,
                        press: () {},
                        radius: 8,
                        text: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/home/points.png',
                                  height: 30,
                                ),
                                Gap(5.w),
                                Text(
                                  "My Points",
                                  style: getTextTheme().headlineMedium,
                                ),
                              ],
                            ),
                            Text(
                              "800",
                              style: getTextTheme().headlineLarge,
                            ),
                          ],
                        ),
                        color: ConstColors.backgroundColor,
                      ),
                      Gap(10),
                      RoundedButton(
                        height: 55,
                        press: () {},
                        radius: 8,
                        text: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/home/coins.png',
                                  height: 30,
                                ),
                                Gap(5.w),
                                Text(
                                  "My Coins",
                                  style: getTextTheme().headlineMedium,
                                ),
                              ],
                            ),
                            Text(
                              "10",
                              style: getTextTheme().headlineLarge,
                            ),
                          ],
                        ),
                        color: ConstColors.backgroundColor,
                      ),
                    ],
                  )),
                  Gap(10),
                  RoundedButton(
                    width: 150.w,
                    press: () {},
                    text: Center(
                        child: Text(
                      "My Vouchers",
                      style: getTextTheme().headlineLarge,
                    )),
                    height: 120,
                    radius: 8,
                    color: ConstColors.backgroundColor,
                  )
                ],
              ),
            ),
            Gap(10.h)
          ],
        ),
      ),
    );
  }
}
