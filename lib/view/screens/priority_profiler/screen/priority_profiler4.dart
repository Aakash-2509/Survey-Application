import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Import Fluttertoast
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import '../../../widgets/common_background_priority.dart';
import '../../../widgets/common_checkbox.dart';
import '../../../widgets/common_radiobutton.dart';
import '../../../widgets/custom_roundedbutton.dart';

class PriorityProfiler4 extends StatefulWidget {
  const PriorityProfiler4({Key? key}) : super(key: key);

  @override
  State<PriorityProfiler4> createState() => _PriorityProfiler4State();
}

class _PriorityProfiler4State extends State<PriorityProfiler4> {
  String? carStatus;
  List<String> flyingStyles = [];

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
    context.push('/priorityprofiler5');
  }

  void validateAndNavigate() {
    if (carStatus == null) {
      showToast('Please select whether you own a car.');
    } else if (flyingStyles.isEmpty) {
      showToast('Please select at least one flying style.');
    } else {
      navigateToNextScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CommonBackground(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: RoundedButton(
          width: 343.w,
          press: validateAndNavigate,
          color: flyingStyles.isNotEmpty
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
      pageno: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text(
            'Do you own a car?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Column(
            children: [
              CustomRadio(
                title: 'Yes',
                value: 'Yes',
                groupValue: carStatus,
                onChanged: (value) {
                  setState(() {
                    carStatus = value;
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomRadio(
                title: 'No',
                value: 'No',
                groupValue: carStatus,
                onChanged: (value) {
                  setState(() {
                    carStatus = value;
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
            'Pick your flying style that you have opted for in the last 6 months?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCheckbox(
                title: 'Domestic travel for business purpose ',
                isChecked: flyingStyles
                    .contains('Domestic travel for business purpose '),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Domestic travel for business purpose ');
                    } else {
                      flyingStyles
                          .remove('Domestic travel for business purpose ');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Overseas travel for business purpose',
                isChecked: flyingStyles
                    .contains('Overseas travel for business purpose'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Overseas travel for business purpose');
                    } else {
                      flyingStyles
                          .remove('Overseas travel for business purpose');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Domestic travel for leisure purpose',
                isChecked: flyingStyles
                    .contains('Domestic travel for leisure purpose'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Domestic travel for leisure purpose');
                    } else {
                      flyingStyles
                          .remove('Domestic travel for leisure purpose');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Overseas travel for Leisure purpose',
                isChecked: flyingStyles
                    .contains('Overseas travel for Leisure purpose'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Overseas travel for Leisure purpose');
                    } else {
                      flyingStyles
                          .remove('Overseas travel for Leisure purpose');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'None of the above',
                isChecked: flyingStyles.contains('None of the above'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('None of the above');
                    } else {
                      flyingStyles.remove('None of the above');
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
