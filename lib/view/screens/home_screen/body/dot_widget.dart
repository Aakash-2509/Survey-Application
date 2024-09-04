import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constansts/const_colors.dart';

class dotWidget extends StatelessWidget {
  const dotWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 5,
      margin: EdgeInsets.only(right: 4.w),
      decoration: BoxDecoration(
        color: ConstColors.shadowColor,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
