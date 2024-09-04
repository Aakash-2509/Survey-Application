
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constansts/const_colors.dart';
import '../../constansts/text_styles.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final String? image;

  const CustomOutlinedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.width,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: ConstColors.backgroundColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 20.sp),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null) ...[
              Image.asset(image!, height: 30.h),
              SizedBox(width: 10.w),
            ],
            Text(
              text,
              style: getTextTheme().displaySmall!.copyWith(fontSize: 16.sp),
            ),
          ],
        ),
      ),
    );
  }
}
