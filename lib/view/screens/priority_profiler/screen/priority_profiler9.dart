import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import '../../../widgets/common_background_priority.dart';
import '../../../widgets/common_radiobutton.dart';
import '../../../widgets/custom_roundedbutton.dart';

class PriorityProfiler9 extends StatefulWidget {
  const PriorityProfiler9({super.key});

  @override
  State<PriorityProfiler9> createState() => _PriorityProfiler9State();
}

class _PriorityProfiler9State extends State<PriorityProfiler9> {
  String? employeestatus;

  void navigateToNextScreen() {
    // Check if both maritalStatus and parentStatus are selected
    if (employeestatus != null) {
      // Navigate to the next screen
      context.push('/priorityprofiler10');
    } else {
      // Show toast messages if any selection is missing
      if (employeestatus == null) {
        Fluttertoast.showToast(
          msg: "Please select your employee status",
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
          color: employeestatus != null
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
      pageno: 9,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text(
            'What is your company\'s employee strength?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Column(
            children: [
              CustomRadio(
                title: '0',
                value: '0',
                groupValue: employeestatus,
                onChanged: (value) {
                  setState(() {
                    employeestatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: '1 - 9',
                value: '1 - 9',
                groupValue: employeestatus,
                onChanged: (value) {
                  setState(() {
                    employeestatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: '10 - 49',
                value: '10 - 49',
                groupValue: employeestatus,
                onChanged: (value) {
                  setState(() {
                    employeestatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: '50 - 99',
                value: '50 - 99',
                groupValue: employeestatus,
                onChanged: (value) {
                  setState(() {
                    employeestatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: '100 - 249',
                value: '100 - 249',
                groupValue: employeestatus,
                onChanged: (value) {
                  setState(() {
                    employeestatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: '250 - 499',
                value: '250 - 499',
                groupValue: employeestatus,
                onChanged: (value) {
                  setState(() {
                    employeestatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: '500 - 999',
                value: '500 - 999',
                groupValue: employeestatus,
                onChanged: (value) {
                  setState(() {
                    employeestatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: '1000 - 4999',
                value: '1000 - 4999',
                groupValue: employeestatus,
                onChanged: (value) {
                  setState(() {
                    employeestatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: '5000+',
                value: '5000+',
                groupValue: employeestatus,
                onChanged: (value) {
                  setState(() {
                    employeestatus = value;
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
