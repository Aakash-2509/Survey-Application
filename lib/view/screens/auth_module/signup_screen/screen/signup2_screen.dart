import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constansts/const_colors.dart';
import '../../../../../constansts/text_styles.dart';
import '../../../../../global/appString.dart';
import '../../../../../utils/validation.dart';
import '../../../../widgets/custom_roundedbutton.dart';
import '../../../../widgets/custom_textfield.dart';

final passwordVisibilityProvider = StateProvider<bool>((ref) => true);
final confirmPasswordVisibilityProvider = StateProvider<bool>((ref) => true);

class Signup2Screen extends StatefulWidget {
  const Signup2Screen({super.key});

  @override
  State<Signup2Screen> createState() => _Signup2ScreenState();
}

class _Signup2ScreenState extends State<Signup2Screen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailController.addListener(_updateButtonState);
    passwordController.addListener(_updateButtonState);
    confirmPasswordController.addListener(_updateButtonState);
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }

  @override
  void dispose() {
    emailController.removeListener(_updateButtonState);
    passwordController.removeListener(_updateButtonState);
    confirmPasswordController.removeListener(_updateButtonState);
    super.dispose();
  }

  void _updateButtonState() {
    setState(() {});
  }

  bool get _isFormValid {
    return emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty &&
        _formKey.currentState?.validate() == true;
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return Appstring.confpasswordreq;
    }
    if (confirmPasswordController.text != passwordController.text) {
      return Appstring.confpasswordvalidation;
    }
    return null;
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Appstring.welcomename,
                          style: getTextTheme()
                              .headlineLarge!
                              .copyWith(fontSize: 22.sp),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          Appstring.createacc,
                          style: getTextTheme()
                              .headlineMedium!
                              .copyWith(fontSize: 18.sp),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        CustomTextFormField(
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
                              color: Colors.transparent,
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
                                        color: ConstColors.black1,
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
                                        color: ConstColors.black1,
                                        height: 20.sp,
                                        width: 20.sp,
                                      ),
                                    ),
                            );
                          },
                        ),
                        SizedBox(height: 16.h),
                        Consumer(
                          builder: (context, ref, child) {
                            final confirmPasswordVisible =
                                ref.watch(confirmPasswordVisibilityProvider);
                            return CustomTextFormField(
                              color: Colors.transparent,
                              obscureText: true,
                              width: 343.w,
                              height: 48.h,
                              obsercureText: confirmPasswordVisible,
                              customText: Appstring.confpassword,
                              controller: confirmPasswordController,
                              validator: _validateConfirmPassword,
                              inputFormatters: const [],
                              onChanged: (value) {},
                              iconss: confirmPasswordVisible
                                  ? IconButton(
                                      onPressed: () {
                                        ref
                                            .read(
                                                confirmPasswordVisibilityProvider
                                                    .notifier)
                                            .state = !confirmPasswordVisible;
                                      },
                                      icon: Image.asset(
                                        "assets/onboarding/icons=eye-slash (1).png",
                                        color: ConstColors.black1,
                                        height: 25.sp,
                                        width: 25.sp,
                                      ),
                                    )
                                  : IconButton(
                                      onPressed: () {
                                        ref
                                            .read(
                                                confirmPasswordVisibilityProvider
                                                    .notifier)
                                            .state = !confirmPasswordVisible;
                                      },
                                      icon: Image.asset(
                                       
                                        "assets/onboarding/icons=eye (1).png",
                                        color: ConstColors.black1,
                                        height: 20.sp,
                                        width: 20.sp,
                                      ),
                                    ),
                            );
                          },
                        ),
                        SizedBox(height: 16.h),
                        RoundedButton(
                          width: 343.w,
                          press: _isFormValid
                              ? () {
                                  if (_formKey.currentState!.validate()) {
                                    context.push('/signup3');
                                    
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
          ),
        ],
      ),
    );
  }
}
