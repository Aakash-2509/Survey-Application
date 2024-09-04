import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/global/appString.dart';
import 'package:borderaccess/view/screens/dailybonus/body/funzoneconatiner.dart';
import 'package:borderaccess/view/screens/predict_and_win_screen/body/teamselection.dart';
import 'package:borderaccess/view/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Predictandwinscreen extends StatelessWidget {
  const Predictandwinscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QAppBar(
        title: Text(
          Appstring.backToFunZone,
          style: getTextTheme().bodyLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                        height: 100,
                        child: Image.asset(
                          'assets/dailybonuszone/predict.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Gap(8.w),
                      SizedBox(
                        width: 180.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              Appstring.predictAndWin,
                              style: getTextTheme()
                                  .displayLarge!
                                  .copyWith(fontSize: 20.sp),
                            ),
                            Text(
                              Appstring.dummyText,
                              style: getTextTheme().displaySmall,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: ConstColors.backgroundColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          child: Image.asset(
                            "assets/dailybonuszone/predicybg.png",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          child: const TeamSelectionSection(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    Appstring.otherGames,
                    style:
                        getTextTheme().headlineLarge!.copyWith(fontSize: 14.sp),
                    gradientType: GradientType.linear,
                    gradientDirection: GradientDirection.ttb,
                    radius: .4,
                    colors: const [Color(0xFF0194A8), Color(0xFFB19CD9)],
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
                      title: Appstring.bidtToWin,
                      image: "assets/dailybonuszone/bid.png",
                      containerColor: ConstColors.bidToWinContainerColor,
                      imgwidth: 180.w,
                      imgheight: 80.h,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.push("/luckyjackpotscreen");
                    },
                    child: FunZoneContainer(
                      title: Appstring.luckyJackpot,
                      image: "assets/dailybonuszone/luckyjackpot.png",
                      containerColor: ConstColors.luckyJackpotContainerColor,
                      imgwidth: 110.w,
                      imgheight: 70.h,
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        context.push('/socialmediacontestscreen');
                      },
                      child: FunZoneContainer(
                        title: Appstring.socialMediaContest,
                        image: "assets/dailybonuszone/socialmedia.png",
                        containerColor: ConstColors.luckyJackpotContainerColor,
                        imgwidth: 95.w,
                        imgheight: 70.h,
                      ),
                    ),
                  InkWell(
                    onTap: () {
                      context.push("/funwheelscreen");
                    },
                    child: FunZoneContainer(
                      title: Appstring.funWheel,
                      image: "assets/dailybonuszone/spinwheel.png",
                      containerColor: ConstColors.bidToWinContainerColor,
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
    );
  }
}
