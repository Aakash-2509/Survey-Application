import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import '../../../widgets/common_background_priority.dart';
import '../../../widgets/common_radiobutton.dart';
import '../../../widgets/custom_roundedbutton.dart';

class PriorityProfiler11 extends StatefulWidget {
  const PriorityProfiler11({super.key});

  @override
  State<PriorityProfiler11> createState() => _PriorityProfiler11State();
}

class _PriorityProfiler11State extends State<PriorityProfiler11> {
  String? primaryrole;

  void navigateToNextScreen() {
    // Check if both primaryrole and parentStatus are selected
    if (primaryrole != null) {
      // Navigate to the next screen
      context.push('/priorityprofiler12');
    } else {
      // Show toast messages if any selection is missing
      if (primaryrole == null) {
        Fluttertoast.showToast(
          msg: "Please select your Primary Role status",
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
          color: primaryrole != null
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
      pageno: 11,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          Text(
            'What is your primary role at work?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Column(
            children: [
              CustomRadio(
                title:
                    'You work in the Information Technology (IT) department of your company.',
                value:
                    'You work in the Information Technology (IT) department of your company.',
                groupValue: primaryrole,
                onChanged: (value) {
                  setState(() {
                    primaryrole = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title:
                    'You perform the functions of an IT staff person, but work outside IT department.',
                value:
                    'You perform the functions of an IT staff person, but work outside IT department.',
                groupValue: primaryrole,
                onChanged: (value) {
                  setState(() {
                    primaryrole = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'You develop software applications or web sites.',
                value: 'You develop software applications or web sites.',
                groupValue: primaryrole,
                onChanged: (value) {
                  setState(() {
                    primaryrole = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title:
                    'You have significant decision-making authority at work, but work outside IT department.',
                value:
                    'You have significant decision-making authority at work, but work outside IT department.',
                groupValue: primaryrole,
                onChanged: (value) {
                  setState(() {
                    primaryrole = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title:
                    'You create, use, transform, consume or manage information using a PC for work',
                value:
                    'You create, use, transform, consume or manage information using a PC for work',
                groupValue: primaryrole,
                onChanged: (value) {
                  setState(() {
                    primaryrole = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Other',
                value: 'Other',
                groupValue: primaryrole,
                onChanged: (value) {
                  setState(() {
                    primaryrole = value;
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
