import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/screens/dailybonus/body/funzoneconatiner.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Livetabscreen extends StatefulWidget {
  const Livetabscreen({super.key});

  @override
  State<Livetabscreen> createState() => _LivetabscreenState();
}

class _LivetabscreenState extends State<Livetabscreen> {
  bool _isChecked = false;
  bool isRegistered = false;
  List<String> termsList = [
    "Coins once spent can’t be reversed.",
    "Coins can’t be converted to Points.",
    "Coins can’t be used to redeem any TPS rewards.",
    "Winner of the bidding contest will get the reward within 1 to 2 weeks.",
    "Bidding value is always incremental.",
    "Number of winners is not restricted to 1 or 2 or 3, it entirely depends on that particular contest, refer to the bid details for the same.",
    "The Panel Station holds the right to monitor/change the value of the Coins.",
    "The Panel Station holds the right to monitor the winners list and verify for their genuineness and change their decision if required.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.scaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24),
              child: Column(
                children: [
                  Container(
                    height: 350,
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
                                      style: getTextTheme()
                                          .headlineLarge!
                                          .copyWith(
                                            fontSize: 20.sp,
                                          ),
                                    )
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 23.h,
                                  width: 110.w,
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
                                      "Time Left - 02:30:24",
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
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24.0, vertical: 15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Entry Bid Coins",
                                        style: getTextTheme()
                                            .displaySmall!
                                            .copyWith(
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
                                          Text("120",
                                              style:
                                                  getTextTheme().displayLarge),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Minimum Participants",
                                        style: getTextTheme()
                                            .displaySmall!
                                            .copyWith(
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
                                          Text("50",
                                              style:
                                                  getTextTheme().displayLarge),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Gap(25.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Participants Joined",
                                        style: getTextTheme()
                                            .displaySmall!
                                            .copyWith(
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
                                          Text("5",
                                              style:
                                                  getTextTheme().displayLarge),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          activeColor:
                                              ConstColors.backgroundColor,
                                          // fillColor: WidgetStatePropertyAll(),
                                          checkColor: ConstColors.black,
                                          value:
                                              _isChecked, // Use the state variable
                                          onChanged: (value) {
                                            setState(() {
                                              _isChecked = value!;
                                            });
                                          },
                                        ),
                                        InkWell(
                                          onTap: () {
                                            showModalBottom(context);
                                          },
                                          child: Text(
                                            "I have read the Terms & Conditions",
                                            style: getTextTheme().displaySmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                    RoundedButton(
                                      press: () {
                                        setState(() {
                                          isRegistered = !isRegistered;
                                        });
                                      },
                                      text: Text(
                                        isRegistered
                                            ? "Unregister"
                                            : "Register",
                                        style: getTextTheme()
                                            .displayLarge!
                                            .copyWith(
                                              fontSize: 16.sp,
                                              color: isRegistered
                                                  ? ConstColors.primaryColor
                                                  : ConstColors.backgroundColor,
                                            ),
                                      ),
                                      color: isRegistered
                                          ? ConstColors.backgroundColor
                                          : ConstColors.primaryColor,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(15),
                  Center(
                    child: InkWell(
                      onTap: () {
                        showParticipantsPopup(context);
                      },
                      child: Text(
                        "Click here to see all participants",
                        style: getTextTheme().headlineLarge!.copyWith(
                              color: ConstColors.primaryColor,
                              decoration: TextDecoration.underline,
                              decorationColor: ConstColors.primaryColor,
                            ),
                      ),
                    ),
                  ),
                  const Gap(20),
                  Container(
                    height: 100,
                    width: 327.w,
                    decoration: BoxDecoration(
                        color: ConstColors.appbarColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            height: 80,
                            "assets/dailybonuszone/coins.png",
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Not enough coins?",
                                style: getTextTheme().bodyLarge,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                      side: const BorderSide(
                                        color: ConstColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  showCoinModalBottom(context);
                                },
                                child: Row(
                                  children: [
                                    Image.asset(
                                      height: 15,
                                      "assets/home/coins.png",
                                    ),
                                    const Gap(5),
                                    Text(
                                      "Buy Coins",
                                      style: getTextTheme()
                                          .headlineLarge!
                                          .copyWith(
                                            color: ConstColors.primaryColor,
                                            fontSize: 14.sp,
                                          ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(25),
                  Row(
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
                ],
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
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
                  InkWell(
                    onTap: () {
                      context.push('/funwheelscreen');
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
            const Gap(80),
          ],
        ),
      ),
    );
  }

  showCoinModalBottom(BuildContext context) {
    return showModalBottomSheet(
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
                    'Buy Coins',
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
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: ConstColors.primaryColor90,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Convert your points to coins and join the bidding game! Be the highest bidder and win amazing vouchers.',
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
                  'Points Convertor',
                  style: getTextTheme().headlineLarge!.copyWith(
                        fontSize: 20.sp,
                        color: ConstColors.backgroundColor,
                      ),
                ),
              ),
            ),
            Container(
              height: 150,
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
                          'Points',
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

  showModalBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
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
                    'Terms & Conditions',
                    style: getTextTheme().headlineLarge!.copyWith(
                          fontSize: 20.sp,
                        ),
                  ),
                ),
                const SizedBox(height: 10),
                ...termsList.map(
                  (term) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "•	$term",
                        style: getTextTheme().headlineMedium,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  color: ConstColors.primaryColor90,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 17.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("We value every opinion.",
                            style: getTextTheme().headlineLarge),
                        SizedBox(
                          width: 250.w,
                          child: Text(
                            "The more, The merrier! So, get your crew onboard, now!",
                            style: getTextTheme().headlineLarge!.copyWith(
                                  color: ConstColors.primaryColor,
                                ),
                          ),
                        ),
                        const Gap(20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: WidgetStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                  side: const BorderSide(
                                    color: ConstColors.black,
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Back",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
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
                    'Participants List',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Minimum Participants',
                        style: getTextTheme().headlineMedium!.copyWith(
                              color: ConstColors.primaryColor,
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            height: 14.h,
                            "assets/dailybonuszone/profile-2user.png",
                          ),
                          Gap(2.w),
                          Text(
                            '50',
                            style: getTextTheme()
                                .headlineLarge!
                                .copyWith(color: ConstColors.primaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Participants Joined',
                        style: getTextTheme().headlineMedium!.copyWith(
                              color: ConstColors.primaryColor,
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            height: 14.h,
                            "assets/dailybonuszone/profile-2user.png",
                          ),
                          Gap(2.w),
                          Text(
                            '5',
                            style: getTextTheme()
                                .headlineLarge!
                                .copyWith(color: ConstColors.primaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: List.generate(8, (index) {
                    return Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: const CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/dailybonuszone/profilephoto.png'),
                          ),
                          title: Text('Participant ${index + 1}'),
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
