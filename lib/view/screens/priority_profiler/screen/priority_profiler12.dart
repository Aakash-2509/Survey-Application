import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import '../../../widgets/common_background_priority.dart';
import '../../../widgets/common_radiobutton.dart';
import '../../../widgets/custom_roundedbutton.dart';

class PriorityProfiler12 extends StatefulWidget {
  const PriorityProfiler12({super.key});

  @override
  State<PriorityProfiler12> createState() => _PriorityProfiler12State();
}

class _PriorityProfiler12State extends State<PriorityProfiler12> {
  String? currentrole;

  void navigateToNextScreen() {
    // Check if both primaryrole and parentStatus are selected
    if (currentrole != null) {
      // Navigate to the next screen
      context.push('/priorityprofiler13');
    } else {
      // Show toast messages if any selection is missing
      if (currentrole == null) {
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
          color: currentrole != null
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
      pageno: 12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          Text(
            'Describe your current functional role at work.',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Column(
            children: [
              CustomRadio(
                title: 'You support or maintain either hardware or software.',
                value: 'You support or maintain either hardware or software.',
                groupValue: currentrole,
                onChanged: (value) {
                  setState(() {
                    currentrole = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title:
                    'Make recommendations, but do not have significant decision-making authority for your department.',
                value:
                    'Make recommendations, but do not have significant decision-making authority for your department.',
                groupValue: currentrole,
                onChanged: (value) {
                  setState(() {
                    currentrole = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title:
                    'You have significant decision-making authority related to technology purchases.',
                value:
                    'You have significant decision-making authority related to technology purchases.',
                groupValue: currentrole,
                onChanged: (value) {
                  setState(() {
                    currentrole = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title:
                    'Your main job is to create software applications or develop web sites for in-house or clients.',
                value:
                    'Your main job is to create software applications or develop web sites for in-house or clients.',
                groupValue: currentrole,
                onChanged: (value) {
                  setState(() {
                    currentrole = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title:
                    'You spend at least half of your time at work designing, specifying or architecting applications or systems.',
                value:
                    'You spend at least half of your time at work designing, specifying or architecting applications or systems.',
                groupValue: currentrole,
                onChanged: (value) {
                  setState(() {
                    currentrole = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'Other',
                value: 'Other',
                groupValue: currentrole,
                onChanged: (value) {
                  setState(() {
                    currentrole = value;
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
