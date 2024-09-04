import 'dart:async';

import 'package:borderaccess/constansts/text_styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../constansts/const_colors.dart';
import '../../../widgets/custom_outinedbutton.dart';

class CarouselThree extends StatefulWidget {
  const CarouselThree({super.key});

  @override
  CarouselThreeState createState() => CarouselThreeState();
}

class CarouselThreeState extends State<CarouselThree> {
  bool showFirstColumn = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        showFirstColumn = !showFirstColumn;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSwitcher(
          duration: Duration(seconds: 1),
          child: showFirstColumn
              ? Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  width: 360.w,
                  height: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage('assets/home/carousal31.png'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5),
                              BlendMode.darken))),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Predict & win",
                            style: getTextTheme()
                                .headlineLarge!
                                .copyWith(color: ConstColors.backgroundColor),
                          ),
                          Gap(10),
                          CustomOutlinedButton(
                            onPressed: () {},
                            width: 120.w,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Play Now',
                                  style: getTextTheme().headlineLarge!.copyWith(
                                      color: ConstColors.primaryColor),
                                ),
                                const Icon(Icons.arrow_forward,
                                    color: ConstColors.primaryColor)
                              ],
                            ),
                          )
                        ],
                      ),
                      Flexible(child: Image.asset('assets/home/carousal32.png'))
                    ],
                  ),
                )
              : Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  width: 360.w,
                  height: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('assets/home/carousal33.jpeg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.darken),
                      )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 180.w,
                        child: Text(
                          "How to increase Your Earnings with Our Playful Ways?",
                          style: getTextTheme()
                              .headlineLarge!
                              .copyWith(color: ConstColors.backgroundColor),
                        ),
                      ),
                      Gap(10),
                      CustomOutlinedButton(
                        onPressed: () {},
                        width: 120.w,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Explore',
                              style: getTextTheme()
                                  .headlineLarge!
                                  .copyWith(color: ConstColors.primaryColor),
                            ),
                            const Icon(Icons.arrow_forward,
                                color: ConstColors.primaryColor)
                          ],
                        ),
                      )
                    ],
                  ),
                )),
    );
  }
}
