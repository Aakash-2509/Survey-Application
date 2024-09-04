import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constansts/const_colors.dart';
import '../../constansts/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final double width;
  final double height;
  final String customText;

  final TextEditingController controller;
  final TextInputType? keyoardType;
  final String? Function(String?)? validator;
  final Function(String) onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final bool obsercureText;
  final int minline;
  final int maxline;
  final textstyle;
  final focusedBordercolor;
  final disabledBordercolor;
  final enabledBordercolor;
  final hintcolor;
  final color;
  final Widget iconss;
  const CustomTextFormField({
    Key? key,
    required this.width,
    required this.height,
    required this.customText,
    required this.controller,
    required this.validator,
    required this.inputFormatters,
    this.readOnly = false,
    this.obsercureText = false,
    this.minline = 1,
    this.maxline = 1,
    this.color,
    this.focusedBordercolor,
    this.disabledBordercolor,
    this.enabledBordercolor,
    this.textstyle,
    this.hintcolor,
    this.iconss = const SizedBox(),
    required this.onChanged,
    this.keyoardType,
    required bool obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsercureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: inputFormatters,
      keyboardType: keyoardType ?? TextInputType.emailAddress,
      readOnly: readOnly,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      style: textstyle ?? getTextTheme().titleLarge!.copyWith(fontSize: 15),
      cursorColor: ConstColors.black1,
      maxLines: maxline,
      minLines: minline,
      decoration: InputDecoration(
        hintText: customText,
        suffixIcon: iconss,
        hintStyle: getTextTheme()
            .titleLarge!
            .copyWith(fontSize: 15, color: hintcolor ?? ConstColors.unselectedIconColor),
        errorStyle:
            TextStyle(height: 0, color: ConstColors.red, fontSize: 12.sp),
        filled: true,
        fillColor: color ?? ConstColors.secondaryColor,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(
              width: .6, color: focusedBordercolor ?? ConstColors.primaryColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(
              width: .6, color: disabledBordercolor ?? ConstColors.black1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(
              width: .6, color: enabledBordercolor ?? ConstColors.black1),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(width: .6),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(width: .6, color: ConstColors.red),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(width: .6, color: ConstColors.red),
        ),
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
