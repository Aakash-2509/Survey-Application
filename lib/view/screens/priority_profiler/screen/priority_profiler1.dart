import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Import Fluttertoast for showing toast messages
import 'package:go_router/go_router.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';

import '../../../widgets/common_background_priority.dart';
import '../../../widgets/custom_dropdown.dart';
import '../../../widgets/custom_roundedbutton.dart';

class PriorityProfiler1 extends StatefulWidget {
  const PriorityProfiler1({Key? key}) : super(key: key);

  @override
  State<PriorityProfiler1> createState() => _PriorityProfiler1State();
}

class _PriorityProfiler1State extends State<PriorityProfiler1> {
  double _currentSliderValue = 0;

  int _selectedDateIndex = 0;
  int _selectedMonthIndex = 0;
  int _selectedYearIndex = 0;
  String _selectedGender = 'Gender'; // Initialized to 'Gender'

  String _selectedDate = '';
  String _selectedMonth = '';
  String _selectedYear = '';

  final List<String> dates =
      List.generate(31, (index) => (index + 1).toString());
  final List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  final List<String> years =
      List.generate(100, (index) => (2000 + index).toString());
  final List<String> genders = ['Gender', 'Male', 'Female', 'Other'];

  bool _isFormValid() {
    return _selectedDateIndex != 0 &&
        _selectedMonthIndex != 0 &&
        _selectedYearIndex != 0 &&
        _selectedGender != 'Gender';
  }



  void _handleNext() {
    if (_selectedGender == 'Gender') {
      Fluttertoast.showToast(
        msg: 'Please select a valid gender',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else if (_selectedDateIndex == 0 ||
        _selectedMonthIndex == 0 ||
        _selectedYearIndex == 0) {
      Fluttertoast.showToast(
        msg: 'Please select a valid date of birth',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else {
      _selectedDate = dates[_selectedDateIndex];
      _selectedMonth = months[_selectedMonthIndex];
      _selectedYear = years[_selectedYearIndex];
      context.push('/priorityprofiler2'); // Navigate to next screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return CommonBackground(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: RoundedButton(
          width: 343.w,
          press: _handleNext,
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
      pageno: 1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Text(
            'Share your date of birth, and let us join in the celebration with you!',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildPickerColumn('Date', dates, _selectedDateIndex, (index) {
                setState(() {
                  _selectedDateIndex = index;
                });
              }),
              SizedBox(width: 16.w),
              _buildPickerColumn('Month', months, _selectedMonthIndex, (index) {
                setState(() {
                  _selectedMonthIndex = index;
                });
              }),
              SizedBox(width: 16.w),
              _buildPickerColumn('Year', years, _selectedYearIndex, (index) {
                setState(() {
                  _selectedYearIndex = index;
                });
              }),
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
            'Kindly choose the gender with which you identify',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20.h),
          CustomDropdown(
            value: _selectedGender,
            onChanged: (newValue) {
              setState(() {
                _selectedGender = newValue!;
              });
            },
            items: genders,
          ),
        ],
      ),
    );
  }

  Widget _buildPickerColumn(String label, List<String> items, int selectedIndex,
      ValueChanged<int> onSelectedItemChanged) {
    return Column(
      children: [
        Text(
          label,
          style: getTextTheme().headlineSmall!.copyWith(fontSize: 16.sp),
        ),
        SizedBox(height: 10.h),
        Container(
          height: 120.h,
          width: 80.w,
          child: Stack(
            children: [
              ListWheelScrollView.useDelegate(
                itemExtent: 50.h,
                diameterRatio: 4,
                onSelectedItemChanged: onSelectedItemChanged,
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, index) {
                    return Center(
                      child: Text(
                        items[index],
                        style: getTextTheme().headlineLarge!.copyWith(
                              fontSize: 20.sp,
                              color: index == selectedIndex
                                  ? Colors.black
                                  : ConstColors.myWinsHintColor,
                            ),
                      ),
                    );
                  },
                  childCount: items.length,
                ),
              ),
              Positioned(
                top: 40.h,
                left: 0,
                right: 0,
                child: Container(
                  height: 1.h,
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 80.h,
                left: 0,
                right: 0,
                child: Container(
                  height: 1.h,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
