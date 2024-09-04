import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/screens/dailybonus/body/funzoneconatiner.dart';
import 'package:borderaccess/view/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Luckyjackpotscreen extends StatelessWidget {
  const Luckyjackpotscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QAppBar(
        title: Text(
          "Back to Fun Zone",
          style: getTextTheme().bodyLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 190.h,
                  decoration: const BoxDecoration(
                    color: ConstColors.black,
                  ),
                ),
                Positioned(
                  left: 12.w,
                  top: 45.h,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        height: 80,
                        child: Image.asset(
                          'assets/dailybonuszone/luckyjackpot.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Gap(10.w),
                      SizedBox(
                        width: 180.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Bid to Win",
                              style: getTextTheme()
                                  .displayLarge!
                                  .copyWith(fontSize: 20.sp),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet consectetur. Commodo pretium leo arcu egestas habitant libero. Facilisis enim curabitur amet vitae",
                              style: getTextTheme().displaySmall,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 170.h),
                  child: Container(
                    height: 400,
                    decoration: const BoxDecoration(
                      color: ConstColors.scaffoldColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Center(
                            child: Container(
                              height: 4,
                              width: 53.w,
                              decoration: BoxDecoration(
                                  color: ConstColors.primaryColor,
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                          ),
                        ),
                        const Gap(24),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Image.asset(
                            "assets/dailybonuszone/Stay Tuned.png",
                          ),
                        ),
                        const Gap(20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GradientText(
                                'Other Games',
                                style: getTextTheme()
                                    .headlineLarge!
                                    .copyWith(fontSize: 14.sp),
                                gradientType: GradientType.linear,
                                gradientDirection: GradientDirection.ttb,
                                radius: .4,
                                colors: const [
                                  Color(0xFF0194A8),
                                  Color(0xFFB19CD9)
                                ],
                              ),
                              const Gap(8),
                              const Expanded(
                                child: Divider(
                                  color: ConstColors.dividerColor,
                                  thickness: 1.5,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(24),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  context.push("/bidtowinscreen");
                                },
                                child: FunZoneContainer(
                                  title: "Bid to Win",
                                  image: "assets/dailybonuszone/bid.png",
                                  containerColor:
                                      ConstColors.bidToWinContainerColor,
                                  imgwidth: 180.w,
                                  imgheight: 80.h,
                                ),
                              ),
                              FunZoneContainer(
                                title: "Predict & Win",
                                image: "assets/dailybonuszone/predict.png",
                                containerColor:
                                    ConstColors.bidToWinContainerColor,
                                imgwidth: 100.w,
                                imgheight: 65.h,
                              ),
                              FunZoneContainer(
                                title: "Social Media Contest",
                                image: "assets/dailybonuszone/socialmedia.png",
                                containerColor:
                                    ConstColors.luckyJackpotContainerColor,
                                imgwidth: 95.w,
                                imgheight: 70.h,
                              ),
                              InkWell(
                                onTap: () {
                                  context.push("/funwheelscreen");
                                },
                                child: FunZoneContainer(
                                  title: "Fun Wheel",
                                  image: "assets/dailybonuszone/spinwheel.png",
                                  containerColor:
                                      ConstColors.bidToWinContainerColor,
                                  imgwidth: 170.w,
                                  imgheight: 80.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
