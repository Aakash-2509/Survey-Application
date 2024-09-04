import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ClosedBids extends StatelessWidget {
  const ClosedBids({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      // height: 200.h,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: ConstColors.backgroundColor,
          border: Border.all(
            color: ConstColors.shadowColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            height: 100.h,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: ConstColors.shadowColor,
                      blurRadius: 4,
                      spreadRadius: 2)
                ],
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.freepnglogos.com/uploads/amazon-png-logo-vector/amazon-png-logo-vector-1.png')),
                color: ConstColors.backgroundColor,
                borderRadius: BorderRadius.circular(3)),
          ),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Participent: ",
                style: getTextTheme().headlineMedium,
              ),
              Expanded(
                child: Text(
                  "Devon Lane",
                  style: getTextTheme().headlineLarge,
                ),
              )
            ],
          ),
          Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Entry bid coins: ",
                style: getTextTheme().headlineMedium,
              ),
              Expanded(
                child: Text(
                  "300",
                  style: getTextTheme().headlineLarge,
                ),
              )
            ],
          ),
          Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Bid: ",
                style: getTextTheme().headlineMedium,
              ),
              Expanded(
                child: Text(
                  "500",
                  style: getTextTheme().headlineLarge,
                ),
              )
            ],
          ),
          Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bid Won at: ",
                style: getTextTheme().headlineMedium,
              ),
              Expanded(
                child: Text(
                  "5000",
                  style: getTextTheme().headlineLarge,
                ),
              )
            ],
          ),
          Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "End date: ",
                style: getTextTheme().headlineMedium,
              ),
              Expanded(
                child: Text(
                  "17 Mar 2024",
                  style: getTextTheme().headlineLarge,
                ),
              )
            ],
          ),
          Gap(10),
        ],
      ),
    );
  }
}
