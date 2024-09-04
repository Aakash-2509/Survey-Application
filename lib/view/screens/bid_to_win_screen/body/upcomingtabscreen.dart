import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/screens/bid_to_win_screen/body/filterwidget.dart';
import 'package:borderaccess/view/screens/dailybonus/body/funzoneconatiner.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Upcomingtabscreen extends StatefulWidget {
  const Upcomingtabscreen({super.key});

  @override
  State<Upcomingtabscreen> createState() => _LivetabscreenState();
}

class _LivetabscreenState extends State<Upcomingtabscreen> {
  bool isRegistered = false;
  bool option1 = false;
  bool option2 = false;
  bool option3 = false;
  bool option4 = false;
  bool option5 = false;

  void resetFilters() {
    setState(() {
      option1 = false;
      option2 = false;
      option3 = false;
      option4 = false;
      option5 = false;
      Navigator.pop(context);
    });
  }

  showModalBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Filter By',
                        style: getTextTheme().headlineLarge!.copyWith(
                              fontSize: 20.sp,
                            ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Checkbox(
                            activeColor: ConstColors.backgroundColor,
                            checkColor: ConstColors.black,
                            value: option1,
                            onChanged: (value) {
                              setState(() {
                                option1 = value!;
                              });
                            },
                          ),
                          title: const Text('Bid: Lowest to Highest'),
                        ),
                        ListTile(
                          leading: Checkbox(
                            activeColor: ConstColors.backgroundColor,
                            checkColor: ConstColors.black,
                            value: option2,
                            onChanged: (value) {
                              setState(() {
                                option2 = value!;
                              });
                            },
                          ),
                          title: const Text('Bid: Highest to Lowest'),
                        ),
                        ListTile(
                          leading: Checkbox(
                            activeColor: ConstColors.backgroundColor,
                            checkColor: ConstColors.black,
                            value: option3,
                            onChanged: (value) {
                              setState(() {
                                option3 = value!;
                              });
                            },
                          ),
                          title: const Text('Sort by Newest'),
                        ),
                        ListTile(
                          leading: Checkbox(
                            activeColor: ConstColors.backgroundColor,
                            checkColor: ConstColors.black,
                            value: option4,
                            onChanged: (value) {
                              setState(() {
                                option4 = value!;
                              });
                            },
                          ),
                          title: const Text('Sort by Oldest'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ConstColors.black,
                              ),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: RoundedButton(
                              color: ConstColors.backgroundColor,
                              press: resetFilters,
                              text: Text(
                                "Reset Filters",
                                style: getTextTheme().headlineLarge,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150.w,
                            child: RoundedButton(
                              color: ConstColors.black,
                              press: () {
                                Navigator.pop(context);
                              },
                              text: Text(
                                "Apply",
                                style: getTextTheme().displayLarge!.copyWith(
                                      fontSize: 16.sp,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(8),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.scaffoldColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  showModalBottom(context);
                },
                child: const FilterwWidget(),
              ),
              const Gap(20),
              giftVoucherCard(),
              const Gap(15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    'Other Games',
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
              const Gap(16),
              SingleChildScrollView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FunZoneContainer(
                      title: "Lucky Jackpot",
                      image: "assets/dailybonuszone/luckyjackpot.png",
                      containerColor: ConstColors.luckyJackpotContainerColor,
                      imgwidth: 110.w,
                      imgheight: 70.h,
                    ),
                    FunZoneContainer(
                      title: "Predict & Win",
                      image: "assets/dailybonuszone/predict.png",
                      containerColor: ConstColors.bidToWinContainerColor,
                      imgwidth: 100.w,
                      imgheight: 65.h,
                    ),
                    FunZoneContainer(
                      title: "Social Media Contest",
                      image: "assets/dailybonuszone/socialmedia.png",
                      containerColor: ConstColors.luckyJackpotContainerColor,
                      imgwidth: 95.w,
                      imgheight: 70.h,
                    ),
                    FunZoneContainer(
                      title: "Fun Wheel",
                      image: "assets/dailybonuszone/spinwheel.png",
                      containerColor: ConstColors.bidToWinContainerColor,
                      imgwidth: 170.w,
                      imgheight: 80.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// Continer for Card
  Container giftVoucherCard() {
    return Container(
      height: 310.h,
      width: 360.w,
      decoration: const BoxDecoration(
        color: ConstColors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(6.sp),
            child: Stack(
              children: [
                Container(
                  height: 110.h,
                  width: 324.w,
                  decoration: const BoxDecoration(
                    color: ConstColors.backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 135.w,
                        height: 50.h,
                        child: Image.asset(
                          "assets/Frame330.png",
                        ),
                      ),
                      Text(
                        "Gift Voucher of ₹500",
                        style: getTextTheme().headlineLarge!.copyWith(
                              fontSize: 20.sp,
                            ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 73.w,
                          decoration: const BoxDecoration(
                              color: ConstColors.cardStartText,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              )),
                          child: Center(
                            child: Text(
                              "Starting on",
                              style: getTextTheme().displayLarge!.copyWith(
                                    fontSize: 12.sp,
                                  ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              height: 12.h,
                              "assets/dailybonuszone/clock.png",
                            ),
                            const Gap(4),
                            Text("18 March 2024",
                                style: getTextTheme().displayLarge),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(12),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Entry Bid Coins",
                          style: getTextTheme().displaySmall!.copyWith(
                                fontSize: 12.sp,
                              ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              height: 12.h,
                              "assets/home/coins.png",
                            ),
                            const Gap(4),
                            Text("120", style: getTextTheme().displayLarge),
                          ],
                        ),
                      ],
                    ),
                    Gap(25.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Minimum Participants",
                          style: getTextTheme().displaySmall!.copyWith(
                                fontSize: 12.sp,
                              ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              height: 12.h,
                              "assets/dailybonuszone/profile-2user.png",
                            ),
                            const Gap(4),
                            Text("5", style: getTextTheme().displayLarge),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(15),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: ConstColors.backgroundColor),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: RoundedButton(
                      press: () {
                        setState(() {
                          isRegistered = !isRegistered;
                        });
                      },
                      text: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.notification_important_rounded,
                            color: isRegistered
                                ? ConstColors.backgroundColor
                                : ConstColors.black,
                          ),
                          Text(
                            isRegistered ? "Undo Action" : "Notify Me",
                            style: getTextTheme().displayLarge!.copyWith(
                                  fontSize: 16.sp,
                                  color: isRegistered
                                      ? ConstColors.backgroundColor
                                      : ConstColors.black,
                                ),
                          ),
                        ],
                      ),
                      color: isRegistered
                          ? ConstColors.black
                          : ConstColors.backgroundColor,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
