import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';

class CustomRadio extends StatelessWidget {
  final String title;
  final String value;
  final String? groupValue;
  final Function(String?) onChanged;

  const CustomRadio({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = value == groupValue;

    return GestureDetector(
      onTap: () => onChanged(value),
      child: Row(
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? Colors.white : ConstColors.myWinsHintColor,
            ),
            padding: EdgeInsets.all(5.0),
            child: Radio(
              value: value,
              groupValue: groupValue,
              onChanged: (newValue) => onChanged(newValue),
              activeColor: ConstColors.black1,
              fillColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return ConstColors.black1;
                  } else {
                    return ConstColors.myWinsHintColor;
                  }
                },
              ),
            ),
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              title,
              style: getTextTheme().headlineMedium!.copyWith(fontSize: 16.sp),
            ),
          ),
        ],
      ),
    );
  }
}
