import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/screens/bid_to_win_screen/body/filterwidget.dart';
import 'package:borderaccess/view/screens/dailybonus/body/funzoneconatiner.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Mybidtabscreen extends StatefulWidget {
  const Mybidtabscreen({super.key});

  @override
  State<Mybidtabscreen> createState() => _LivetabscreenState();
}

class _LivetabscreenState extends State<Mybidtabscreen> {
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

  bool isClicked = false;
  bool isClicked2 = false;

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
              GestureDetector(
                onTap: () {
                  setState(() {
                    isClicked = !isClicked;
                  });
                },
                child: isClicked
                    ? BidWonContainer()
                    : GiftVoucherCard(
                        date: "18 March 2024",
                        endDate: "18 March 2024",
                        entryBid: 300,
                        myBid: 300,
                        bidWonAt: 350,
                      ),
              ),
              const Gap(20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isClicked2 = !isClicked2;
                  });
                },
                child: isClicked2
                    ? BidWonContainer()
                    : GiftVoucherCard(
                        date: "18 March 2024",
                        endDate: "18 March 2024",
                        entryBid: 300,
                        myBid: 300,
                        bidWonAt: 350,
                      ),
              ),
              const Gap(20),
              GiftVoucherCard(
                date: "18 March 2024",
                endDate: "18 March 2024",
                entryBid: 300,
                myBid: 300,
                bidWonAt: 350,
              ),
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
}

// BIC WON CONTAINER WITH TWO BOTTOMSHEET INSIDE //

class BidWonContainer extends StatelessWidget {
  final GlobalKey _tooltipKey = GlobalKey();
  final GlobalKey _tooltipKey2 = GlobalKey();
  BidWonContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 360.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/dailybonuszone/bidtowinbg.png",
            ),
            fit: BoxFit.cover),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: SizedBox(
                          width: 135.w,
                          height: 50.h,
                          child: Image.asset(
                            "assets/Frame330.png",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Gift Voucher of ₹500",
                          style: getTextTheme().headlineLarge!.copyWith(
                                fontSize: 20.sp,
                              ),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 23.h,
                    width: 120.w,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF0194A8),
                          Color(0xFFB19CD9),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "You have won this bid",
                        style: getTextTheme().displayLarge!.copyWith(
                              fontSize: 12.sp,
                            ),
                      ),
                    ),
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
                          width: 38,
                          decoration: const BoxDecoration(
                              color: ConstColors.primaryColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              )),
                          child: Center(
                            child: Text(
                              "Date",
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Entry Coins",
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
                            Text("300", style: getTextTheme().displayLarge),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Coins Spent",
                              style: getTextTheme().displaySmall!.copyWith(
                                    fontSize: 12.sp,
                                  ),
                            ),
                            const Gap(4),
                            InkWell(
                              onTap: () {
                                final dynamic tooltip =
                                    _tooltipKey.currentState;
                                tooltip.ensureTooltipVisible();
                              },
                              child: Tooltip(
                                decoration: const BoxDecoration(
                                    color: ConstColors.backgroundColor),
                                preferBelow: false,
                                key: _tooltipKey,
                                message:
                                    'Total coins spent is\nreversed if the bid is not won',
                                textStyle:
                                    getTextTheme().headlineMedium!.copyWith(
                                          fontSize: 16.sp,
                                        ),
                                child: const Icon(
                                  size: 12,
                                  color: ConstColors.backgroundColor,
                                  Icons.info,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              height: 12.h,
                              "assets/home/coins.png",
                            ),
                            const Gap(4),
                            Text("300", style: getTextTheme().displayLarge),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Reversal ",
                              style: getTextTheme().displaySmall!.copyWith(
                                    fontSize: 12.sp,
                                  ),
                            ),
                            const Gap(4),
                            InkWell(
                              onTap: () {
                                final dynamic tooltip =
                                    _tooltipKey2.currentState;
                                tooltip.ensureTooltipVisible();
                              },
                              child: Tooltip(
                                decoration: const BoxDecoration(
                                    color: ConstColors.backgroundColor),
                                preferBelow: false,
                                key: _tooltipKey2,
                                message:
                                    'Total coins spent for a particular\nBid excluding the entry bid coins',
                                textStyle:
                                    getTextTheme().headlineMedium!.copyWith(
                                          fontSize: 16.sp,
                                        ),
                                child: const Icon(
                                  size: 12,
                                  color: ConstColors.backgroundColor,
                                  Icons.info,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              height: 12.h,
                              "assets/home/coins.png",
                            ),
                            const Gap(4),
                            Text("300", style: getTextTheme().displayLarge),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(30),
                Center(
                  child: RoundedButton(
                    press: () {
                      claimVoucherBottomSheet(context);
                    },
                    text: Text(
                      "Claim Now",
                      style: getTextTheme().displayLarge!.copyWith(
                            fontSize: 16.sp,
                            color: ConstColors.backgroundColor,
                          ),
                    ),
                    color: ConstColors.primaryColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> claimVoucherBottomSheet(BuildContext context) {
    showCoinModalBottom(BuildContext context) {
      return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Convert to Points',
                      style: getTextTheme().headlineLarge!.copyWith(
                            fontSize: 20.sp,
                          ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.cancel_outlined,
                        color: ConstColors.grey,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 65,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    color: ConstColors.primaryColor90,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Transform your voucher amount into points and unlock exciting rewards!',
                    style: getTextTheme().headlineMedium,
                  ),
                ),
              ),
              const Gap(10),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 8),
                color: Colors.grey[800],
                child: Center(
                  child: Text(
                    'Currency Convertor',
                    style: getTextTheme().headlineLarge!.copyWith(
                          fontSize: 20.sp,
                          color: ConstColors.backgroundColor,
                        ),
                  ),
                ),
              ),
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: ConstColors.black,
                  image: DecorationImage(
                    opacity: 0.4,
                    alignment: Alignment.bottomCenter,
                    image: const AssetImage(
                      "assets/dailybonuszone/points.png",
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.grey.withOpacity(0.5),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'X Points = Y Coins',
                      style: getTextTheme().headlineMedium!.copyWith(
                            color: ConstColors.backgroundColor,
                            fontSize: 20.sp,
                          ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: ConstColors.darkGrey,
                            backgroundColor: ConstColors.backgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16),
                          ),
                          child: Text(
                            '₹500',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            size: 24.sp,
                            color: ConstColors.backgroundColor,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: ConstColors.black,
                            backgroundColor: ConstColors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16),
                          ),
                          child: Text(
                            'Coins',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: ConstColors.black,
                            backgroundColor: ConstColors.backgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16),
                          ),
                          child: Text(
                            'Convert & Add to wallet',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );
    }

    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 200.h,
                color: ConstColors.primaryColor,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          color: ConstColors.backgroundColor,
                          Icons.cancel_outlined,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/dailybonuszone/Frame 1244829204.png",
                            height: 50.h,
                          ),
                          Text(
                            "Congratulations John !",
                            style: getTextTheme().displayLarge!.copyWith(
                                  fontSize: 26.sp,
                                ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 120.w,
                                child: Text(
                                  "You won Amazon Voucher Of",
                                  style: getTextTheme().bodyLarge,
                                ),
                              ),
                              Text(
                                "₹500",
                                style: getTextTheme().displayLarge!.copyWith(
                                      fontSize: 52.sp,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 250.h,
                color: ConstColors.backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Please Note:",
                        style: getTextTheme().headlineLarge!.copyWith(
                              fontSize: 14.sp,
                            ),
                      ),
                      const Gap(8),
                      Text(
                        "If the prize amount is not claimed within 2 days, the voucher details will be sent directly to your email. You will not be able to convert the voucher amount to points.",
                        style: getTextTheme().headlineMedium,
                      ),
                      Gap(16.h),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: ConstColors.black),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: RoundedButton(
                          press: () {
                            Navigator.pop(context);
                            showCoinModalBottom(context);
                          },
                          color: ConstColors.backgroundColor,
                          text: Text(
                            "Convert to points",
                            style: getTextTheme().headlineLarge,
                          ),
                        ),
                      ),
                      Gap(16.h),
                      RoundedButton(
                        press: () {},
                        color: ConstColors.black,
                        text: Text(
                          "Claim Now",
                          style: getTextTheme().displayLarge!.copyWith(
                                fontSize: 16.sp,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class GiftVoucherCard extends StatelessWidget {
  final String date;
  final String endDate;
  final int entryBid;
  final int myBid;
  final int bidWonAt;

  GiftVoucherCard({
    super.key,
    required this.date,
    required this.endDate,
    required this.entryBid,
    required this.myBid,
    required this.bidWonAt,
  });
  final GlobalKey _tooltipKey = GlobalKey();
  final GlobalKey _tooltipKey2 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: 360.w,
      decoration: const BoxDecoration(
        color: ConstColors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
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
                        Row(
                          children: [
                            SizedBox(
                              width: 40.w,
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: ConstColors.primaryColor,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                    )),
                                child: Center(
                                  child: Text(
                                    "Date",
                                    style:
                                        getTextTheme().displayLarge!.copyWith(
                                              fontSize: 12.sp,
                                            ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  height: 12.h,
                                  "assets/dailybonuszone/clock.png",
                                ),
                                const Gap(4),
                                Text(
                                  date,
                                  overflow: TextOverflow.ellipsis,
                                  style: getTextTheme().displayLarge,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(12),
                SizedBox(
                  width: 280.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Entry Coins",
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
                              Text("$entryBid",
                                  style: getTextTheme().displayLarge),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Coins Spent",
                                style: getTextTheme().displaySmall!.copyWith(
                                      fontSize: 12.sp,
                                    ),
                              ),
                              const Gap(4),
                              InkWell(
                                onTap: () {
                                  final dynamic tooltip =
                                      _tooltipKey.currentState;
                                  tooltip.ensureTooltipVisible();
                                },
                                child: Tooltip(
                                  decoration: const BoxDecoration(
                                      color: ConstColors.backgroundColor),
                                  preferBelow: false,
                                  key: _tooltipKey,
                                  message:
                                      'Total coins spent is\nreversed if the bid is not won',
                                  textStyle:
                                      getTextTheme().headlineMedium!.copyWith(
                                            fontSize: 16.sp,
                                          ),
                                  child: const Icon(
                                    size: 12,
                                    color: ConstColors.backgroundColor,
                                    Icons.info,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                height: 12.h,
                                "assets/home/coins.png",
                              ),
                              const Gap(4),
                              Text("$myBid",
                                  style: getTextTheme().displayLarge),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Reversal ",
                                style: getTextTheme().displaySmall!.copyWith(
                                      fontSize: 12.sp,
                                    ),
                              ),
                              const Gap(4),
                              InkWell(
                                onTap: () {
                                  final dynamic tooltip =
                                      _tooltipKey2.currentState;
                                  tooltip.ensureTooltipVisible();
                                },
                                child: Tooltip(
                                  decoration: const BoxDecoration(
                                      color: ConstColors.backgroundColor),
                                  preferBelow: false,
                                  key: _tooltipKey2,
                                  message:
                                      'Total coins spent for a particular\nBid excluding the entry bid coins',
                                  textStyle:
                                      getTextTheme().headlineMedium!.copyWith(
                                            fontSize: 16.sp,
                                          ),
                                  child: const Icon(
                                    size: 12,
                                    color: ConstColors.backgroundColor,
                                    Icons.info,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                height: 12.h,
                                "assets/home/coins.png",
                              ),
                              const Gap(4),
                              Text("$bidWonAt",
                                  style: getTextTheme().displayLarge),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
