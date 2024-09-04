import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constansts/text_styles.dart';

class CurrentPageWidget extends StatelessWidget {
  final String currentIndex;
  final Color bgcolor;
  final Color textColor;

  const CurrentPageWidget({
    super.key,
    required this.currentIndex,
    required this.bgcolor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19,
      width: 33,
      margin: EdgeInsets.only(right: 4.w),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          "$currentIndex/3",
          style: getTextTheme()
              .displayLarge!
              .copyWith(fontSize: 12, color: textColor),
        ),
      ),
    );
  }
}