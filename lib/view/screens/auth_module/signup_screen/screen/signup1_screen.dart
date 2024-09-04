import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constansts/const_colors.dart';
import '../../../../../constansts/text_styles.dart';
import '../../../../../global/appString.dart';
import '../../../../../utils/validation.dart';
import '../../../../widgets/custom_roundedbutton.dart';
import '../../../../widgets/custom_textfield.dart';

class Signup1Screen extends StatefulWidget {
  const Signup1Screen({super.key});

  @override
  State<Signup1Screen> createState() => _Signup1ScreenState();
}

class _Signup1ScreenState extends State<Signup1Screen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    firstNameController.addListener(_updateButtonState);
    lastNameController.addListener(_updateButtonState);
    firstNameController.clear();
    lastNameController.clear();
  }

  @override
  void dispose() {
    firstNameController.removeListener(_updateButtonState);
    lastNameController.removeListener(_updateButtonState);
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  void _updateButtonState() {
    setState(() {});
  }

  bool get _isFormValid {
    return firstNameController.text.isNotEmpty &&
        lastNameController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.08, // 8% opacity
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/onboarding/signupbackgroun.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                       Appstring.nameshare,
                        style: getTextTheme()
                            .headlineLarge!
                            .copyWith(fontSize: 20.sp),
                      ),
                      SizedBox(height: 20.h),
                      CustomTextFormField(
                        color: Colors.transparent,
                        width: 343.w,
                        height: 48.h,
                        customText: Appstring.firstname,
                        controller: firstNameController,
                        validator: Validators().validateFirstName,
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter
                        ],
                        onChanged: (value) {},
                        keyoardType: TextInputType.name,
                        obscureText: true,
                        maxline: 1,
                        minline: 1,
                      ),
                      SizedBox(height: 16.h),
                      CustomTextFormField(
                        color: Colors.transparent,
                        width: 343.w,
                        height: 48.h,
                        customText: Appstring.lastname,
                        controller: lastNameController,
                        validator: Validators().validateLastName,
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter
                        ],
                        onChanged: (value) {},
                        maxline: 1,
                        minline: 1,
                        keyoardType: TextInputType.name,
                        obscureText: true,
                      ),
                      SizedBox(height: 24.h),
                      RoundedButton(
                        width: 343.w,
                        press: _isFormValid
                            ? () {
                                if (_formKey.currentState!.validate()) {
                                  context.push('/signup2');
                                }
                              }
                            : null,
                        text: Text(
                          Appstring.next,
                          style: getTextTheme().displayLarge,
                          textAlign: TextAlign.center,
                        ),
                        color: _isFormValid
                            ? ConstColors.primaryColor
                            : ConstColors.unselectedIconColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



