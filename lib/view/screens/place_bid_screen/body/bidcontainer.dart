import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/global/appString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BidContainer extends StatelessWidget {
  final String rank;
  final String name;
  final String bidAmount;
  final String coinImagePath;

  const BidContainer({
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
                    color: ConstColors.darkGrey,
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
                      ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  Appstring.bidText,
                  style: getTextTheme().headlineMedium,
                ),
                const Gap(4),
                Image.asset(
                  coinImagePath,
                  height: 16,
                ),
                const Gap(4),
                Text(
                  bidAmount,
                  style: getTextTheme().headlineLarge,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
