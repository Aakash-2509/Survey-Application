import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import '../../../widgets/common_background_priority.dart';
import '../../../widgets/common_radiobutton.dart';
import '../../../widgets/custom_roundedbutton.dart';

class PriorityProfiler13 extends StatefulWidget {
  const PriorityProfiler13({super.key});

  @override
  State<PriorityProfiler13> createState() => _PriorityProfiler13State();
}

class _PriorityProfiler13State extends State<PriorityProfiler13> {
  String? householdincome;

  void navigateToNextScreen() {
    // Check if both primaryrole and parentStatus are selected
    if (householdincome != null) {
      // Navigate to the next screen
      context.push('/onboardinghomepage');
    } else {
      // Show toast messages if any selection is missing
      if (householdincome == null) {
        Fluttertoast.showToast(
          msg: "Please select your household income status",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return CommonBackground(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: RoundedButton(
          width: 343.w,
          press: navigateToNextScreen,
          color: householdincome != null
              ? ConstColors.primaryColor
              : ConstColors.unselectedIconColor,
          text: Text(
            "Next",
            style: getTextTheme().displayLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      showLogo: true,
      pageno: 13,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          Text(
            'Select your annual household income.',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Column(
            children: [
              CustomRadio(
                title: 'Less than Rs. 90,000',
                value: 'Less than Rs. 90,000',
                groupValue: householdincome,
                onChanged: (value) {
                  setState(() {
                    householdincome = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Rs. 90,001 - Rs. 2,00,000',
                value: 'Rs. 90,001 - Rs. 2,00,000',
                groupValue: householdincome,
                onChanged: (value) {
                  setState(() {
                    householdincome = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Rs. 2,00,001 - Rs. 5,00,000',
                value: 'Rs. 2,00,001 - Rs. 5,00,000',
                groupValue: householdincome,
                onChanged: (value) {
                  setState(() {
                    householdincome = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Rs. 5,00,001 - Rs. 10,00,000',
                value: 'Rs. 5,00,001 - Rs. 10,00,000',
                groupValue: householdincome,
                onChanged: (value) {
                  setState(() {
                    householdincome = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Rs. 10,00,001 - Rs. 15,00,000',
                value: 'Rs. 10,00,001 - Rs. 15,00,000',
                groupValue: householdincome,
                onChanged: (value) {
                  setState(() {
                    householdincome = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Rs. 15,00,001 - Rs. 20,00,000',
                value: 'Rs. 15,00,001 - Rs. 20,00,000',
                groupValue: householdincome,
                onChanged: (value) {
                  setState(() {
                    householdincome = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Rs. 20,00,000 +',
                value: 'Rs. 20,00,000 +',
                groupValue: householdincome,
                onChanged: (value) {
                  setState(() {
                    householdincome = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'I prefer not to answer',
                value: 'I prefer not to answer',
                groupValue: householdincome,
                onChanged: (value) {
                  setState(() {
                    householdincome = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
