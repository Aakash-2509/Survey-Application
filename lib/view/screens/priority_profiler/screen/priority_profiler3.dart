import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Import for toast messages
import 'package:go_router/go_router.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';

import '../../../widgets/common_background_priority.dart';
import '../../../widgets/common_radiobutton.dart';
import '../../../widgets/custom_roundedbutton.dart';

class PriorityProfiler3 extends StatefulWidget {
  const PriorityProfiler3({super.key});

  @override
  State<PriorityProfiler3> createState() => _PriorityProfiler3State();
}

class _PriorityProfiler3State extends State<PriorityProfiler3> {
  String? maritalStatus;
  String? parentStatus;

  void navigateToNextScreen() {
    // Check if both maritalStatus and parentStatus are selected
    if (maritalStatus != null && parentStatus != null) {
      // Navigate to the next screen
      context.push('/priorityprofiler4');
    } else {
      // Show toast messages if any selection is missing
      if (maritalStatus == null) {
        Fluttertoast.showToast(
          msg: "Please select your marital status",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      }
      if (parentStatus == null) {
        Fluttertoast.showToast(
          msg: "Please select your parent status",
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
          press: navigateToNextScreen, // Call navigateToNextScreen function
          color: maritalStatus != null && parentStatus != null
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
      pageno: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text(
            'What is your marital status?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Column(
            children: [
              CustomRadio(
                title: 'Single, never married',
                value: 'Single, never married',
                groupValue: maritalStatus,
                onChanged: (value) {
                  setState(() {
                    maritalStatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Married or domestic partnership',
                value: 'Married or domestic partnership',
                groupValue: maritalStatus,
                onChanged: (value) {
                  setState(() {
                    maritalStatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Widowed',
                value: 'Widowed',
                groupValue: maritalStatus,
                onChanged: (value) {
                  setState(() {
                    maritalStatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Divorced',
                value: 'Divorced',
                groupValue: maritalStatus,
                onChanged: (value) {
                  setState(() {
                    maritalStatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Separated',
                value: 'Separated',
                groupValue: maritalStatus,
                onChanged: (value) {
                  setState(() {
                    maritalStatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Other',
                value: 'Other',
                groupValue: maritalStatus,
                onChanged: (value) {
                  setState(() {
                    maritalStatus = value;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 20.h),
          const Divider(
            height: 10,
            thickness: 1,
            color: ConstColors.dividercolor,
            indent: 15,
            endIndent: 15,
          ),
          SizedBox(height: 20.h),
          Text(
            'Family matters! Are you a parent? Choose your status:',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Column(
            children: [
              CustomRadio(
                title: 'Yes, I\'m a proud parent!',
                value: 'Yes, I\'m a proud parent!',
                groupValue: parentStatus,
                onChanged: (value) {
                  setState(() {
                    parentStatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Nope, no kids yet.',
                value: 'Nope, no kids yet.',
                groupValue: parentStatus,
                onChanged: (value) {
                  setState(() {
                    parentStatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'My partner or I am currently expecting a child',
                value: 'My partner or I am currently expecting a child',
                groupValue: parentStatus,
                onChanged: (value) {
                  setState(() {
                    parentStatus = value;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
