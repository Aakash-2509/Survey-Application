import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';

import '../../../widgets/common_background_priority.dart';
import '../../../widgets/custom_dropdown.dart';
import '../../../widgets/custom_roundedbutton.dart';

class PriorityProfiler10 extends StatefulWidget {
  const PriorityProfiler10({super.key});

  @override
  State<PriorityProfiler10> createState() => _PriorityProfiler10State();
}

class _PriorityProfiler10State extends State<PriorityProfiler10> {
  // New dropdown state variables
  String _selectedWork = 'Work Type';
  String _selectedRole = 'Role Type';
  String _selectedDepartment = 'Department Type';

  // New dropdown lists
  final List<String> workTypes = ['Work Type', 'Work Type 2', 'Work Type 3'];

  final List<String> roleTypes = ['Role Type', 'Role Type 2', 'Role Type 3'];

  final List<String> departmentTypes = [
    'Department Type',
    'Department Type 2',
    'Department Type 3'
  ];

  bool _isFormValid() {
    // Add your validation logic here
    return _selectedWork != 'Work Type' &&
        _selectedRole != 'Role Type' &&
        _selectedDepartment != 'Department Type';
  }

  void _handleNextButtonPress() {
    if (_selectedWork == 'Work Type') {
      _showToast("Please select your Work Type.");
    } else if (_selectedRole == 'Role Type') {
      _showToast("Please select your Role Type.");
    } else if (_selectedDepartment == 'Department Type') {
      _showToast("Please select your Department Type.");
    } else {
      context.push('/priorityprofiler11');
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
      pageno: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text(
            'Which industry do you work in?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20.h),
          CustomDropdown(
            value: _selectedWork,
            onChanged: (newValue) {
              setState(() {
                _selectedWork = newValue!;
              });
            },
            items: workTypes,
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
            'Which job title best fits your role?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20.h),
          CustomDropdown(
            value: _selectedRole,
            onChanged: (newValue) {
              setState(() {
                _selectedRole = newValue!;
              });
            },
            items: roleTypes,
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
            'In which department are you primarily employed at your organization?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20.h),
          CustomDropdown(
            value: _selectedDepartment,
            onChanged: (newValue) {
              setState(() {
                _selectedDepartment = newValue!;
              });
            },
            items: departmentTypes,
          ),
        ],
      ),
    );
  }
}
