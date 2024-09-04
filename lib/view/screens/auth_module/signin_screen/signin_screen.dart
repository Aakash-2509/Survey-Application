import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/widgets/custom_outline_button.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../global/appString.dart';
import '../../../../utils/validation.dart';
import '../../../widgets/custom_textfield.dart';
import '../../onboarding/screen/onboaeding_welcomescreen.dart';

final passwordVisibilityProvider = StateProvider<bool>((ref) => true);

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/onboarding/splashbackground.png', // Replace with your background image path
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0.sp),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(Appstring.hey,
                          style: getTextTheme()
                              .displayLarge!
                              .copyWith(fontSize: 32.sp)),
                      SizedBox(height: 20.h),
                      Center(
                        // Center widget added here
                        child: Text(
                          Appstring.morereward,
                          style: getTextTheme()
                              .displaySmall!
                              .copyWith(fontSize: 20.sp),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      CustomTextFormField(
                        textstyle:
                            getTextTheme().bodyLarge!.copyWith(fontSize: 15),
                        hintcolor: ConstColors.myWinsHintColor,
                        focusedBordercolor: ConstColors.backgroundColor,
                        disabledBordercolor: ConstColors.backgroundColor,
                        enabledBordercolor: ConstColors.backgroundColor,
                        color: Colors.transparent,
                        width: 343.w,
                        height: 48.h,
                        customText: Appstring.email,
                        controller: emailController,
                        validator: Validators().validateEmail,
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter
                        ],
                        onChanged: (value) {},
                        keyoardType: TextInputType.emailAddress,
                        maxline: 1,
                        minline: 1,
                        obscureText: true,
                      ),
                      SizedBox(height: 16.h),
                      Consumer(
                        builder: (context, ref, child) {
                          final passwordVisible =
                              ref.watch(passwordVisibilityProvider);
                          return CustomTextFormField(
                            hintcolor: ConstColors.myWinsHintColor,
                            focusedBordercolor: ConstColors.backgroundColor,
                            disabledBordercolor: ConstColors.backgroundColor,
                            enabledBordercolor: ConstColors.backgroundColor,
                            color: Colors.transparent,
                            textstyle: getTextTheme()
                                .bodyLarge!
                                .copyWith(fontSize: 15),
                            obscureText: true,
                            width: 343.w,
                            height: 48.h,
                            obsercureText: passwordVisible,
                            customText: Appstring.password,
                            controller: passwordController,
                            validator: Validators().validatePassword,
                            inputFormatters: const [],
                            onChanged: (value) {},
                            iconss: passwordVisible
                                ? IconButton(
                                    onPressed: () {
                                      ref
                                          .read(passwordVisibilityProvider
                                              .notifier)
                                          .state = !passwordVisible;
                                    },
                                    icon: Image.asset(
                                      "assets/onboarding/icons=eye-slash (1).png",
                                      color: ConstColors.backgroundColor,
                                      height: 25.sp,
                                      width: 25.sp,
                                    ),
                                  )
                                : IconButton(
                                    onPressed: () {
                                      ref
                                          .read(passwordVisibilityProvider
                                              .notifier)
                                          .state = !passwordVisible;
                                    },
                                    icon: Image.asset(
                                      "assets/onboarding/icons=eye (1).png",
                                      color: ConstColors.backgroundColor,
                                      height: 20.sp,
                                      width: 20.sp,
                                    ),
                                  ),
                          );
                        },
                      ),
                      SizedBox(height: 10.h),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            // Handle the click event here
                           
                            // Navigate to the sign-in screen or perform any action
                          },
                          child: Text(
                            Appstring.forgotpassword,
                            style: getTextTheme().displayLarge!.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationColor: ConstColors.backgroundColor,
                                  fontSize: 14.sp,
                                ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      RoundedButton(
                        width: 343.w,
                        press: () {
                          // context.push('/signup1');
                        },
                        text: Text(
                          Appstring.signin,
                          style: getTextTheme().displayLarge,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 40.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50.sp),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Divider(
                                color: ConstColors.backgroundColor,
                                thickness: 1,
                              ),
                            ),
                            SizedBox(height: 30.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.sp),
                              child: Text(
                                Appstring.OR,
                                style: getTextTheme()
                                    .displayLarge!
                                    .copyWith(fontSize: 22),
                              ),
                            ),
                            const Expanded(
                              child: Divider(
                                color: ConstColors.backgroundColor,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.h),
                      CustomOutlinedButton(
                        width: 343.w,
                        text: Appstring.continuegoogle,
                        onPressed: () {
                          // Implement your Google sign-in logic here
                        },
                        image: 'assets/onboarding/Googleicon.png', // Add Google logo path
                      ),
                      SizedBox(height: 10.h),
                      CustomOutlinedButton(
                        width: 343.w,
                        text: Appstring.continueapple,
                        onPressed: () {
                          // Implement your Apple sign-in logic here
                        },
                        image: 'assets/onboarding/appleicon.png', // Add Apple logo path
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        Appstring.notmember,
                        style: getTextTheme().displaySmall,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.h),
                      GestureDetector(
                        onTap: () {
                          // Handle the click event here
                        },
                        child: Text(
                          Appstring.signup,
                          style: getTextTheme().displayLarge!.copyWith(
                                decoration: TextDecoration.underline,
                                decorationColor: ConstColors.backgroundColor,
                                fontSize: 20,
                              ),
                        ),
                      )
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
