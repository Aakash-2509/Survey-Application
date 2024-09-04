import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TopMessageConatiner extends StatelessWidget {
  const TopMessageConatiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            padding: EdgeInsets.all(20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Instant Opinion",
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
    );
  }
}
