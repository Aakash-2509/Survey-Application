import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityRewardItem extends StatelessWidget {
  final String activity;
  final String reward;
  String reward2;
  final String date;
  final String description;
  final bool showDivider;

  ActivityRewardItem({
    super.key,
    required this.activity,
    required this.reward,
    required this.reward2,
    required this.date,
    required this.description,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                activity,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    reward,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 14.sp,
                          color: ConstColors
                              .containerBottomColor, // Use your desired color here
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                          decorationColor: ConstColors
                              .containerBottomColor, // Use your desired color here
                        ),
                  ),
                  Text(
                    reward2,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 14.sp,
                          color: ConstColors
                              .containerBottomColor, // Use your desired color here
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                          decorationColor: ConstColors
                              .containerBottomColor, // Use your desired color here
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IntrinsicHeight(
                child: Row(
                  children: [
                    Text(
                      date,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 10.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const VerticalDivider(
                      color: Colors.grey, // Use your desired color here
                      thickness: 1,
                    ),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 10.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (showDivider)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Colors.grey, // Use your desired color here
            ),
          ),
      ],
    );
  }
}
