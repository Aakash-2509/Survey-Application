import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/screens/dailybonus/body/rankingtile.dart';
import 'package:borderaccess/view/widgets/common_appbar.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Rankingpollscreen extends StatefulWidget {
  const Rankingpollscreen({super.key});

  @override
  _RankingpollscreenState createState() => _RankingpollscreenState();
}

class _RankingpollscreenState extends State<Rankingpollscreen> {
  final List<String> titles = [
    "First",
    "Second",
    "Third",
    "Fourth",
    "Fifth",
    "Sixth",
  ];

  final List<String> options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6',
  ];

  void updateTitle(int index, String newTitle) {
    setState(() {
      titles[index] = newTitle;
      options.remove(newTitle);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QAppBar(
        onTapBackButton: () {
          Navigator.pop(context);
        },
        title:
            Text("Back to Daily Bonus Zone", style: getTextTheme().bodyLarge),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
          child: Column(
            children: [
              Container(
                height: 196.h,
                width: 360.w,
                decoration: BoxDecoration(
                  color: ConstColors.backgroundColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 10,
                      width: 360.w,
                      decoration: const BoxDecoration(
                        color: ConstColors.containerBottomColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ranking Poll",
                            style: getTextTheme().displayLarge!.copyWith(
                                  color: ConstColors.containerBottomColor,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet consectetur. Malesuada praesent lobortis semper mollis dolor. Tellus imperdiet neque pretium suspendisse.",
                            style: getTextTheme().headlineMedium!.copyWith(
                                  fontSize: 16,
                                ),
                          ),
                          const Gap(8),
                          Container(
                            height: 26.h,
                            width: 105.w,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFF0194A8), Color(0xFFB19CD9)],
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "Earn xx points",
                                style: getTextTheme().displayLarge!.copyWith(
                                      fontSize: 14.sp,
                                    ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Gap(25),
              for (int i = 0; i < titles.length; i++)
                Column(
                  children: [
                    RankingTile(
                      index: i,
                      leadingText: '${i + 1}',
                      title: titles[i],
                      trailingIcon:
                          const Icon(Icons.keyboard_arrow_down_rounded),
                      onOptionSelected: (newTitle) => updateTitle(i, newTitle),
                    ),
                    const Gap(16),
                  ],
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: RoundedButton(
          press: () {
            context.push("/rankingpollendscreen");
          },
          text: Text(
            "Submit",
            style: getTextTheme().headlineLarge!.copyWith(
                  color: ConstColors.backgroundColor,
                ),
          ),
        ),
      ),
    );
  }
}
