import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class VouchersUi extends StatelessWidget {
  const VouchersUi({super.key});

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
                      spreadRadius: 1)
                ],
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.freepnglogos.com/uploads/amazon-png-logo-vector/amazon-png-logo-vector-1.png')),
                color: ConstColors.backgroundColor,
                borderRadius: BorderRadius.circular(3)),
          ),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Get Amazon",
                style: getTextTheme().headlineMedium,
              ),
              Text(
                "Gift Voucher of 45",
                style: getTextTheme().headlineLarge,
              )
            ],
          ),
          // Gap(20),
          Divider(
            color: ConstColors.primaryColor,
            thickness: 5,
            height: 30,
          ),
          //Gap(20),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.attach_money_rounded,
                    color: ConstColors.primaryColor,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Use Your",
                        style: getTextTheme().headlineMedium,
                      ),
                      Text(
                        "500 Points",
                        style: getTextTheme().headlineLarge,
                      )
                    ],
                  ),
                ],
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: RoundedButton(
                    press: () {},
                    text: Text(
                      'Claim',
                      style: getTextTheme().displayLarge,
                    )),
              ))
            ],
          ),
          Gap(20),
        ],
      ),
    );
  }
}
