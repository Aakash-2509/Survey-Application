import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constansts/text_styles.dart';

class FunZoneContainer extends StatelessWidget {
  final String title;
  final String image;
  final Color containerColor;
  final double imgwidth;
  final double imgheight;

  const FunZoneContainer({
    super.key,
    required this.title,
    required this.image,
    required this.containerColor,
    required this.imgwidth,
    required this.imgheight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 74.h,
        width: 213.w,
        decoration: BoxDecoration(
            // color: containerColor,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                containerColor,
                ConstColors.black,
              ],
            ),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: ConstColors.shadowColor,
                blurRadius: 2,
                spreadRadius: 4,
                offset: Offset(0, 3)
              )
            ]),
        margin: const EdgeInsets.only(right: 10,bottom: 10),
        child: Stack(
          children: [
            Positioned(
              left: 10.sp,
              top: 20.sp,
              child: SizedBox(
                width: 180,
                child: Text(
                  title,
                  style: getTextTheme().displayLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: SizedBox(
                // width: 160.w,
                child: Image.asset(
                  // width: 180.w,
                  width: imgwidth,
                  height: imgheight,
                  fit: BoxFit.fitWidth,
                  image,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
