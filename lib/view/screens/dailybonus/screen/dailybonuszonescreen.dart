import 'dart:async';
import 'dart:ui';
import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/screens/dailybonus/body/funzoneconatiner.dart';
import 'package:borderaccess/view/screens/dailybonus/body/reuseablecontainer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../body/mywinrewardconatiner.dart';

class Dailybonuszonescreen extends StatefulWidget {
  const Dailybonuszonescreen({super.key});

  @override
  State<Dailybonuszonescreen> createState() => _DailybonuszonescreenState();
}

class _DailybonuszonescreenState extends State<Dailybonuszonescreen> {
  final List<String> items = [
    'Last 7 days',
    'Last 30 days',
    'Last 60 days',
    'Last 90 days',
  ];
  String? selectedValue = 'Last 7 days';
  final List<String> filterOptions = ["Option 1", "Option 2", "Option 3"];
  String? selectedValueFilter;

  late Timer _timer;
  int _currentIndex = 0;
  final List<String> _texts = [
    "“Bid to win”",
    "“Social Media Contest”",
    "“Predict & Win”",
    "“Lucky Jackpot”",
    "“Fun Wheel”"
  ];

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _texts.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 220.h,
                child: Stack(
                  children: [
                    ClipPath(
                        clipper: CurveClipper(),
                        child: Container(
                          height: 200.h,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Color(0xFF0194A8),
                                Color(0xFFB19CD9)
                              ])),
                        )),
                    ClipPath(
                      clipper: CurveClipper(),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                        child: Container(
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: ConstColors.semicircleColor.withOpacity(0.1),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      // left: 30.sp,
                      // top: -10.sp,
                      child: Column(
                        children: [
                          Lottie.asset(
                            'assets/dailybonuszone/Gift.json',
                            height: 100.h,
                            width: 120.w,
                          ),
                          Text(
                            "Daily Bonus Zone",
                            style: getTextTheme().displayLarge!.copyWith(
                                  fontSize: 32.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          SizedBox(
                            width: 250.w,
                            child: Text(
                              "Engage in thrilling games to earn points & coins.",
                              textAlign: TextAlign.center,
                              style: getTextTheme().displayLarge!.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: const BoxDecoration(
                            color: ConstColors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          height: 45,
                          width: 240.w,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Play ",
                                    textAlign: TextAlign.left,
                                    style: getTextTheme()
                                        .displayLarge!
                                        .copyWith(fontWeight: FontWeight.bold)),
                                AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 500),
                                  transitionBuilder: (Widget child,
                                      Animation<double> animation) {
                                    return FadeTransition(
                                        opacity: animation, child: child);
                                  },
                                  child: Text(
                                    textAlign: TextAlign.left,
                                    _texts[_currentIndex],
                                    key: ValueKey<int>(_currentIndex),
                                    style:
                                        getTextTheme().displayLarge!.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(15),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: GridView.count(
                  crossAxisSpacing: 20.w,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    InkWell(
                      onTap: () {
                        context.push('/rankingpollscreen');
                      },
                      child: const ReusableContainer(
                        imagePath: "assets/dailybonuszone/rankingpoll.png",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.push('/dailypollscreen');
                      },
                      child: const ReusableContainer(
                        imagePath: "assets/dailybonuszone/dailypoll.png",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.push("/instantopinion");
                      },
                      child: const ReusableContainer(
                        imagePath: "assets/dailybonuszone/instantopinion.png",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.count(
                  crossAxisSpacing: 20.w,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 10),
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 2,
                  children: [
                    Text(
                      "Ranking Poll",
                      textAlign: TextAlign.center,
                      style: getTextTheme().displayLarge!.copyWith(
                            color: ConstColors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                    ),
                    Text(
                      "Daily Poll",
                      style: getTextTheme().displayLarge!.copyWith(
                            color: ConstColors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Instant Opinion",
                      style: getTextTheme().displayLarge!.copyWith(
                            color: ConstColors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const Gap(16),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GradientText(
                      'Fun Zone',
                      style: getTextTheme()
                          .headlineLarge!
                          .copyWith(fontSize: 14.sp),
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
              const Gap(16),
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
                        title: "Lucky Jackpot",
                        image: "assets/dailybonuszone/luckyjackpot.png",
                        containerColor: ConstColors.luckyJackpotContainerColor,
                        imgwidth: 110.w,
                        imgheight: 70.h,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.push("/predictandwinscreen");
                      },
                      child: FunZoneContainer(
                        title: "Predict & Win",
                        image: "assets/dailybonuszone/predict.png",
                        containerColor: ConstColors.bidToWinContainerColor,
                        imgwidth: 100.w,
                        imgheight: 65.h,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.push('/socialmediacontestscreen');
                      },
                      child: FunZoneContainer(
                        title: "Social Media Contest",
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
                        title: "Fun Wheel",
                        image: "assets/dailybonuszone/spinwheel.png",
                        containerColor: ConstColors.bidToWinContainerColor,
                        imgwidth: 170.w,
                        imgheight: 80.h,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      color: ConstColors.backgroundColor,
                      borderRadius: BorderRadius.circular(8)),
                  height: 310.h,
                  width: 360.w,
                  child: Column(
                    children: [
                      Container(
                        width: 350.w,
                        height: 40.h,
                        decoration: const BoxDecoration(
                          color: ConstColors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 10,
                          ),
                          child: Text(
                            "My Wins",
                            style: getTextTheme()
                                .displayLarge!
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Container(
                        height: 54.h,
                        width: 350.w,
                        decoration: const BoxDecoration(
                          color: ConstColors.lightGrey,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 25),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton2<String>(
                                    isExpanded: true,
                                    items: items
                                        .map((String item) =>
                                            DropdownMenuItem<String>(
                                              value: item,
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Data Range: ",
                                                    style: getTextTheme()
                                                        .displayLarge!
                                                        .copyWith(
                                                          color: ConstColors
                                                              .myWinsHintColor,
                                                          fontSize: 12.sp,
                                                        ),
                                                  ),
                                                  Text(
                                                    item,
                                                    style: getTextTheme()
                                                        .displayLarge!
                                                        .copyWith(
                                                          color:
                                                              ConstColors.black,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ))
                                        .toList(),
                                    value: selectedValue,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedValue = value;
                                      });
                                    },
                                    buttonStyleData: ButtonStyleData(
                                      decoration: BoxDecoration(
                                        color: ConstColors.backgroundColor,
                                        border: Border.all(
                                          color: ConstColors.dividerColor,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(42)),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      height: 40,
                                      width: 140,
                                    ),
                                    menuItemStyleData: const MenuItemStyleData(
                                      height: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 35.h,
                              width: 35.w,
                              decoration: const BoxDecoration(
                                  color: ConstColors.backgroundColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      8,
                                    ),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.filter_alt_outlined,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                            const Gap(15),
                          ],
                        ),
                      ),
                      const Gap(15),
                      // MY WIN CONATINER
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Activity",
                              style: getTextTheme().displayLarge!.copyWith(
                                    fontSize: 14.sp,
                                    color: ConstColors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Text(
                              "Rewards",
                              style: getTextTheme().displayLarge!.copyWith(
                                    fontSize: 14.sp,
                                    color: ConstColors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(15),
                      ActivityRewardItem(
                        reward2: "",
                        activity: "Fun Activity",
                        reward: "₹500 Amazon Voucher",
                        date: "21 Mar 24",
                        description: "Lucky Jackpot",
                        showDivider: false,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(
                          color: ConstColors.grey,
                        ),
                      ),
                      // >>>>>>>>>>>>>>>>
                      ActivityRewardItem(
                        activity: "Fun Activity",
                        reward: "Big Basket",
                        reward2: "Discount Coupon",
                        date: "21 Mar 24",
                        description: "Lucky Jackpot",
                        showDivider: false,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(
                          color: ConstColors.grey,
                        ),
                      ),
                      ActivityRewardItem(
                        reward2: "",
                        activity: "Fun Activity",
                        reward: "100 Points",
                        date: "21 Mar 24",
                        description: "Lucky Jackpot",
                        showDivider: false,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(
                          color: ConstColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(25),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 200.h,
                    width: 360.w,
                    decoration: const BoxDecoration(
                      color: ConstColors.playandwinContainerColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          8,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.sp, top: 20.sp),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ready to ",
                                style: getTextTheme().displayLarge!.copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              Text(
                                "Play and Win?",
                                style: getTextTheme().displayLarge!.copyWith(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                              const Gap(10),
                              Text(
                                "Use your X coins to dive into",
                                style: getTextTheme().displayLarge!.copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              Text(
                                "our exciting game zone now!",
                                style: getTextTheme().displayLarge!.copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              const Gap(16),
                              Container(
                                height: 40.h,
                                width: 126.w,
                                decoration: const BoxDecoration(
                                  color: ConstColors.backgroundColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Play Now",
                                        style: getTextTheme()
                                            .displayLarge!
                                            .copyWith(
                                              color: ConstColors
                                                  .containerBottomColor,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      const Gap(5),
                                      const Icon(
                                        Icons.arrow_forward_rounded,
                                        color: ConstColors.containerBottomColor,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Positioned(
                            right: 0,
                            child: Lottie.asset(
                              'assets/dailybonuszone/Animation.json',
                              height: 150.h,
                              width: 120.w,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              const Gap(50)
            ],
          ),
        ),
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
