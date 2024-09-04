import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';

import '../../../widgets/common_background_priority.dart';
import '../../../widgets/custom_dropdown.dart';
import '../../../widgets/custom_roundedbutton.dart';

class PriorityProfiler8 extends StatefulWidget {
  const PriorityProfiler8({super.key});

  @override
  State<PriorityProfiler8> createState() => _PriorityProfiler8State();
}

class _PriorityProfiler8State extends State<PriorityProfiler8> {
  String _selectedAccountType = 'Account Type'; // Default value
  String _selectedEducation = 'Education Qualification'; // Default value
  String _selectedEmploymentStatus = 'Employment Status'; // Default value

  final List<String> accountTypes = [
    'Account Type',
    'Account Type 2',
    'Account Type 3'
  ];

  final List<String> educationQualifications = [
    'Education Qualification',
    'Education Qualification 2',
    'Education Qualification 3'
  ];

  final List<String> employmentStatuses = [
    'Employment Status',
    'Employment Status 2',
    'Employment Status 3'
  ];

  bool _isFormValid() {
    return _selectedAccountType != 'Account Type' &&
        _selectedEducation != 'Education Qualification' &&
        _selectedEmploymentStatus != 'Employment Status';
  }

  void _handleNextButtonPress() {
    if (_selectedAccountType == 'Account Type') {
      _showToast("Please select your Account Type.");
    } else if (_selectedEducation == 'Education Qualification') {
      _showToast("Please select your Education Qualification.");
    } else if (_selectedEmploymentStatus == 'Employment Status') {
      _showToast("Please select your Employment Status.");
    } else {
      context.push('/priorityprofiler9');
    }
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CommonBackground(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: RoundedButton(
          width: 343.w,
          press: _handleNextButtonPress,
          color: _isFormValid()
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
      pageno: 8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text(
            'What type of account do you hold in a bank?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20.h),
          CustomDropdown(
            value: _selectedAccountType,
            onChanged: (newValue) {
              setState(() {
                _selectedAccountType = newValue!;
              });
            },
            items: accountTypes,
          ),
          SizedBox(height: 20.h),
          const Divider(
            height: 10,
            thickness: 1,
            color: ConstColors.dividercolor,
            indent: 15,
            endIndent: 15,
          ),
          SizedBox(height: 10.h),
          Text(
            'Select your highest educational qualification.',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20.h),
          CustomDropdown(
            value: _selectedEducation,
            onChanged: (newValue) {
              setState(() {
                _selectedEducation = newValue!;
              });
            },
            items: educationQualifications,
          ),
          SizedBox(height: 20.h),
          const Divider(
            height: 10,
            thickness: 1,
            color: ConstColors.dividercolor,
            indent: 15,
            endIndent: 15,
          ),
          SizedBox(height: 10.h),
          Text(
            'Tell us your employment status:',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20.h),
          CustomDropdown(
            value: _selectedEmploymentStatus,
            onChanged: (newValue) {
              setState(() {
                _selectedEmploymentStatus = newValue!;
              });
            },
            items: employmentStatuses,
          ),
        ],
      ),
    );
  }
}
