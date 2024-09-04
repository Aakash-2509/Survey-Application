

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';

import '../../../widgets/common_background_priority.dart';
import '../../../widgets/custom_dropdown.dart';
import '../../../widgets/custom_roundedbutton.dart';

class PriorityProfiler2 extends StatefulWidget {
  const PriorityProfiler2({super.key});

  @override
  State<PriorityProfiler2> createState() => _PriorityProfiler2State();
}

class _PriorityProfiler2State extends State<PriorityProfiler2> {
  final List<String> nationalities = ['Nationality', 'Indian', 'Russian'];

  final List<String> cities = ['City', 'Nagpur', 'Pune'];

  final List<String> ethnicities = [
    'Ethnicity',
    'American Indian or Alaska Native',
    'Black or African American'
  ];

  String _selectedNationality = 'Nationality';
  String _selectedCity = 'City';
  String _selectedEthnicity = 'Ethnicity';

  bool _isFormValid() {
    return _selectedNationality != 'Nationality' &&
        _selectedCity != 'City' &&
        _selectedEthnicity != 'Ethnicity';
  }

  void _handleNextButtonPress() {
    if (_selectedNationality == 'Nationality') {
      _showToast("Please select your nationality.");
    } else if (_selectedCity == 'City') {
      _showToast("Please select your city.");
    } else if (_selectedEthnicity == 'Ethnicity') {
      _showToast("Please select your ethnicity.");
    } else {
      context.push('/priorityprofiler3');
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
      pageno: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text(
            'Tell us your nationality.',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20.h),
          CustomDropdown(
            value: _selectedNationality,
            onChanged: (newValue) {
              setState(() {
                _selectedNationality = newValue!;
              });
            },
            items: nationalities,
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
            'Which city do you currently live in?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20.h),
          CustomDropdown(
            value: _selectedCity,
            onChanged: (newValue) {
              setState(() {
                _selectedCity = newValue!;
              });
            },
            items: cities,
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
            'Select your ethnicity:',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20.h),
          CustomDropdown(
            value: _selectedEthnicity,
            onChanged: (newValue) {
              setState(() {
                _selectedEthnicity = newValue!;
              });
            },
            items: ethnicities,
          ),
        ],
      ),
    );
  }
}
