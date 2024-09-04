import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constansts/const_colors.dart'; // Adjust path as per your project structure

class CustomDropdown extends StatelessWidget {
  final String value;
  final ValueChanged<String?> onChanged;
  final List<String> items;

  const CustomDropdown({
    required this.value,
    required this.onChanged,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w, // Adjust width as needed
      height: 48.h, // Adjust height as needed
      decoration: BoxDecoration(
        border: Border.all(color: ConstColors.black),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w), // Adjust padding as needed
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          onChanged: onChanged,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 15.sp, // Adjust font size as needed
                  color: ConstColors.black, // Customize the text color
                ),
              ),
            );
          }).toList(),
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: ConstColors.black,
            size: 30.sp, // Adjust icon size as needed
          ),
          dropdownColor: ConstColors.backgroundColor, // Customize dropdown background color
          isExpanded: true,
          borderRadius: BorderRadius.circular(10), // Add border radius here
        ),
      ),
    );
  }
}
