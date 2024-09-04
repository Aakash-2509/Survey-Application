
import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:flutter/material.dart';

class CustomRadioContainer extends StatelessWidget {
  final String option;
  final String selectedOption;
  final ValueChanged<String?> onChanged;

  const CustomRadioContainer({
    super.key,
    required this.option,
    required this.selectedOption,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selectedOption == option
            ? Colors.black
            : ConstColors.backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: RadioListTile<String>(
        activeColor: ConstColors.backgroundColor,
        value: option,
        groupValue: selectedOption,
        title: Text(
          option,
          style: getTextTheme().headlineMedium!.copyWith(
                color: selectedOption == option ? Colors.white : Colors.black,
              ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
