import 'package:borderaccess/constansts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckbox extends StatefulWidget {
  final String title;
  final Function(bool isChecked)? onChanged;
  final bool isChecked;

  const CustomCheckbox({
    Key? key,
    required this.title,
    required this.isChecked,
    this.onChanged,
  }) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onChanged != null) {
          widget.onChanged!(!widget.isChecked);
        }
      },
      child: Row(
        children: [
          Container(
            width: 20, // Adjust width and height for checkbox
            height: 20,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5),
              shape: BoxShape.rectangle,
              color: widget.isChecked ? Colors.transparent : Colors.transparent,
            ),
            child: widget.isChecked
                ? Icon(
                    Icons.check,
                    size: 16.0,
                    color: Colors.black, // Customize check icon color
                  )
                : null,
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              widget.title,
              style: getTextTheme().headlineMedium!.copyWith(fontSize: 16.sp),
              // Customize text style as needed
            ),
          ),
        ],
      ),
    );
  }
}
