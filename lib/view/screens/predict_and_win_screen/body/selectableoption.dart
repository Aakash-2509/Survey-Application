import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';

class SelectableOption extends StatelessWidget {
  final bool isChecked;
  final String text;
  final VoidCallback onTap;
  final Color containerColor;

  const SelectableOption({
    super.key,
    required this.isChecked,
    required this.text,
    required this.onTap,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: containerColor,
          border: Border.all(
            color: isChecked ? ConstColors.black : ConstColors.primaryColor,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ConstColors.backgroundColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: isChecked ? Colors.white : ConstColors.primaryColor,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    isChecked ? Icons.check : Icons.check_box_outline_blank,
                    size: 16.0,
                    color: isChecked ? ConstColors.black : Colors.transparent,
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              Text(
                text,
                style: getTextTheme().headlineMedium!.copyWith(
                      fontSize: 16.sp,
                      color: isChecked ? Colors.white : Colors.black,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
