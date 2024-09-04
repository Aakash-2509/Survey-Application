
import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constansts/text_styles.dart';

class FilterwWidget extends StatelessWidget {
  const FilterwWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: ConstColors.backgroundColor,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/dailybonuszone/Icons (1).png",
              height: 12.h,
            ),
            Text(
              "Filter",
              style: getTextTheme().headlineMedium,
            )
          ],
        ),
      ),
    );
  }
}
