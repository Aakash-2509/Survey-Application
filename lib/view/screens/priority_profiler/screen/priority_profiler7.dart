import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import '../../../widgets/common_background_priority.dart';
import '../../../widgets/common_checkbox.dart';
import '../../../widgets/common_radiobutton.dart';
import '../../../widgets/custom_roundedbutton.dart';
// Import the custom checkbox widget

class PriorityProfiler7 extends StatefulWidget {
  const PriorityProfiler7({Key? key}) : super(key: key);

  @override
  State<PriorityProfiler7> createState() => _PriorityProfiler7State();
}

class _PriorityProfiler7State extends State<PriorityProfiler7> {
  String? smokestatus;
  List<String> accountype = [];

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  void navigateToNextScreen() {
    context.push('/priorityprofiler8');
  }

  void validateAndNavigate() {
    if (smokestatus == null) {
      showToast('Please select Smoke Status.');
    } else if (accountype.isEmpty) {
      showToast('Please select at least one bank account type.');
    } else {
      navigateToNextScreen();
    }
  }
  // List to store selected flying styles

  @override
  Widget build(BuildContext context) {
    return CommonBackground(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: RoundedButton(
          width: 343.w,
          press: validateAndNavigate,
          color: accountype.isNotEmpty
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
      pageno: 7,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          Text(
            'Do you smoke?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Column(
            children: [
              CustomRadio(
                title: 'Yes',
                value: 'Yes',
                groupValue: smokestatus,
                onChanged: (value) {
                  setState(() {
                    smokestatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'No',
                value: 'No',
                groupValue: smokestatus,
                onChanged: (value) {
                  setState(() {
                    smokestatus = value;
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
            'In which of the following types of bank do you have an account?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCheckbox(
                title: 'Retail banks',
                isChecked: accountype.contains('Retail banks'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      accountype.add('Retail banks');
                    } else {
                      accountype.remove('Retail banks');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Commercial banks',
                isChecked: accountype.contains('Commercial banks'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      accountype.add('Commercial banks');
                    } else {
                      accountype.remove('Commercial banks');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Investment banks',
                isChecked: accountype.contains('Investment banks'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      accountype.add('Investment banks');
                    } else {
                      accountype.remove('Investment banks');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Central banks',
                isChecked: accountype.contains('Central banks'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      accountype.add('Central banks');
                    } else {
                      accountype.remove('Central banks');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Credit unions',
                isChecked: accountype.contains('Credit unions'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      accountype.add('Credit unions');
                    } else {
                      accountype.remove('Credit unions');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Others',
                isChecked: accountype.contains('Others'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      accountype.add('Others');
                    } else {
                      accountype.remove('Others');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'None of the above',
                isChecked: accountype.contains('None of the above'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      accountype.add('None of the above');
                    } else {
                      accountype.remove('None of the above');
                    }
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
