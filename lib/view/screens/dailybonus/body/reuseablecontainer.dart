import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';

class ReusableContainer extends StatelessWidget {
  final String imagePath;

  const ReusableContainer({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: BoxDecoration(
        color: ConstColors.backgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 10.sp,bottom: 30.sp,left: 15.sp,right: 10.sp),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 25.h,
              decoration: const BoxDecoration(
                color: ConstColors.containerBottomColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  "Earn xx points",
                  style: getTextTheme().displayLarge!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
