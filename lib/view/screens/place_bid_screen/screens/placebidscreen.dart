import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/global/appString.dart';
import 'package:borderaccess/view/screens/bid_to_win_screen/body/pointtocoinconvert.dart';
import 'package:borderaccess/view/screens/place_bid_screen/body/bidcontainer.dart';
import 'package:borderaccess/view/screens/place_bid_screen/body/userbidconatiner.dart';
import 'package:borderaccess/view/widgets/common_appbar.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Placebidscreen extends StatefulWidget {
  const Placebidscreen({super.key});

  @override
  State<Placebidscreen> createState() => _PlacebidscreenState();
}

class _PlacebidscreenState extends State<Placebidscreen> {
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
          children: [
            Stack(
              children: [
                Container(
                  height: 244.h,
                  width: 375.w,
                  color: ConstColors.black,
                  child: Center(
                    child: Container(
                      height: 153.h,
                      width: 289.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ConstColors.backgroundColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            height: 70.h,
                            "assets/dailybonuszone/Frame 1244829204.png",
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
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 26,
                    width: 160,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xFF0194A8),
                          Color(0xFFB19CD9),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.watch_later,
                            color: ConstColors.backgroundColor,
                            size: 16,
                          ),
                          const Gap(6),
                          Text(
                            "1 hr : 30 min : 49 sec",
                            style: getTextTheme().displayLarge,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current Highest Bid",
                        style: getTextTheme().titleLarge!.copyWith(
                              fontSize: 16.sp,
                            ),
                      ),
                      const Gap(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/dailybonuszone/Polygon 1.png",
                            height: 10,
                          ),
                          const Gap(4),
                          Text(
                            "120",
                            style: getTextTheme().headlineLarge!.copyWith(
                                  fontSize: 20.sp,
                                ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Gap(32),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Bids",
                        style: getTextTheme().titleLarge!.copyWith(
                              fontSize: 16.sp,
                            ),
                      ),
                      const Gap(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/dailybonuszone/judge.png",
                            height: 16,
                          ),
                          const Gap(4),
                          Text(
                            "5",
                            style: getTextTheme().headlineLarge!.copyWith(
                                  fontSize: 20.sp,
                                ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: DottedLine(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 4.0,
                dashColor: ConstColors.darkGrey,
                dashRadius: 0.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
              ),
            ),
            const Gap(19),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Last Bid",
                        style: getTextTheme().titleLarge!.copyWith(
                              fontSize: 16.sp,
                            ),
                      ),
                      const Gap(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/dailybonuszone/Polygon 1.png",
                            height: 10,
                          ),
                          const Gap(4),
                          Text(
                            "101",
                            style: getTextTheme().headlineLarge!.copyWith(
                                  fontSize: 20.sp,
                                ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Gap(32),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Coins Available",
                        style: getTextTheme().titleLarge!.copyWith(
                              fontSize: 16.sp,
                            ),
                      ),
                      const Gap(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/home/coins.png",
                            height: 16,
                          ),
                          const Gap(4),
                          Text(
                            "XX",
                            style: getTextTheme().headlineLarge!.copyWith(
                                  fontSize: 20.sp,
                                ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: InkWell(
                onTap: () {
                  const Pointtocoinconvert().showCoinModalBottom(context);
                },
                child: Row(
                  children: [
                    Text(
                      "Not Enough Coins?",
                      style: getTextTheme().headlineMedium,
                    ),
                    const Gap(4),
                    Text(
                      "Click here to Buy coins",
                      style: getTextTheme().headlineLarge!.copyWith(
                            color: ConstColors.primaryColor,
                            decoration: TextDecoration.underline,
                            decorationColor: ConstColors.primaryColor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Top Bidders",
                        style: getTextTheme().headlineLarge!.copyWith(
                              fontSize: 20.sp,
                            ),
                      )
                    ],
                  ),
                  const Gap(16),
                  const BidContainer(
                    rank: "1",
                    name: "Aakash Jagtap",
                    bidAmount: "100",
                    coinImagePath: "assets/home/coins.png",
                  ),
                  const Gap(16),
                  const BidContainer(
                    rank: "2",
                    name: "Chetan Jadhav",
                    bidAmount: "99",
                    coinImagePath: "assets/home/coins.png",
                  ),
                  const Gap(16),
                  const BidContainer(
                    rank: "3",
                    name: "Vaishnavi Dubbu",
                    bidAmount: "35",
                    coinImagePath: "assets/home/coins.png",
                  ),
                  const Gap(30),
                  const Userbidconatiner(
                    rank: "5",
                    name: "Vaishnavi Dubbu",
                    bidAmount: "3",
                    coinImagePath: "assets/home/coins.png",
                  ),
                  const Gap(16),
                  Center(
                    child: InkWell(
                      onTap: () {
                        showParticipantsPopup(context);
                      },
                      child: Text(
                        "View More",
                        style: getTextTheme().headlineLarge!.copyWith(
                              color: ConstColors.primaryColor,
                            ),
                      ),
                    ),
                  ),
                  const Gap(16),
                  Row(
                    children: [
                      Text(
                        "Bid Details",
                        style: getTextTheme().headlineLarge!.copyWith(
                              fontSize: 20.sp,
                            ),
                      ),
                    ],
                  ),
                  const Gap(16),
                  Container(
                    // height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(color: ConstColors.primaryColor)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 13.0, vertical: 14),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bid ID",
                                style: getTextTheme().headlineMedium!.copyWith(
                                      fontSize: 16.sp,
                                    ),
                              ),
                              Text(
                                "BID 098765",
                                style: getTextTheme().headlineLarge,
                              ),
                            ],
                          ),
                          const Gap(12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Starting BID Coins",
                                style: getTextTheme().headlineMedium!.copyWith(
                                      fontSize: 16.sp,
                                    ),
                              ),
                              Text(
                                "100",
                                style: getTextTheme().headlineLarge,
                              ),
                            ],
                          ),
                          const Gap(12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "BID Increment",
                                style: getTextTheme().headlineMedium!.copyWith(
                                      fontSize: 16.sp,
                                    ),
                              ),
                              Text(
                                "5",
                                style: getTextTheme().headlineLarge,
                              ),
                            ],
                          ),
                          const Gap(12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Start Date & Time",
                                style: getTextTheme().headlineMedium!.copyWith(
                                      fontSize: 16.sp,
                                    ),
                              ),
                              Text(
                                "17 Mar 24  12:00 PM",
                                style: getTextTheme().headlineLarge,
                              ),
                            ],
                          ),
                          const Gap(12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "End Date & Time",
                                style: getTextTheme().headlineMedium!.copyWith(
                                      fontSize: 16.sp,
                                    ),
                              ),
                              Text(
                                "17 Mar 24  4:00 PM",
                                style: getTextTheme().headlineLarge,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void showParticipantsPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 400.h,
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Top Bidders',
                    style: getTextTheme().headlineLarge!.copyWith(
                          fontSize: 20.sp,
                        ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.cancel_outlined),
                    color: ConstColors.grey,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: List.generate(10, (index) {
                    return Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: const CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/dailybonuszone/profilephoto.png'),
                          ),
                          title: Text('Participant ${index + 1}'),
                          trailing: SizedBox(
                            width: 50,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/home/coins.png",
                                  height: 16,
                                  width: 16,
                                ),
                                const Gap(4),
                                Text(
                                  "120",
                                  style: getTextTheme().headlineLarge!.copyWith(
                                        color: ConstColors.primaryColor,
                                      ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          color: ConstColors.grey,
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
