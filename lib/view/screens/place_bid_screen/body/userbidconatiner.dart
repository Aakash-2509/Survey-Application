import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Userbidconatiner extends StatelessWidget {
  final String rank;
  final String name;
  final String bidAmount;
  final String coinImagePath;

  const Userbidconatiner({
    super.key,
    required this.rank,
    required this.name,
    required this.bidAmount,
    required this.coinImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: ConstColors.darkGrey),
        borderRadius: BorderRadius.circular(40),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF0194A8),
            Color(0xFFB19CD9),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ConstColors.primaryColor,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      rank,
                      style: getTextTheme().displaySmall,
                    ),
                  ),
                ),
                const Gap(10),
                Text(
                  name,
                  style: getTextTheme().headlineLarge!.copyWith(
                        fontSize: 14.sp,
                        color: ConstColors.backgroundColor,
                      ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Bid",
                  style: getTextTheme().headlineMedium!.copyWith(
                        color: ConstColors.backgroundColor,
                      ),
                ),
                const Gap(4),
                Image.asset(
                  coinImagePath,
                  height: 16,
                  color: ConstColors.backgroundColor,
                ),
                const Gap(4),
                Text(
                  bidAmount,
                  style: getTextTheme().headlineLarge!.copyWith(
                        color: ConstColors.backgroundColor,
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
