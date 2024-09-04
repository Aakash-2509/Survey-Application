import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../constansts/const_colors.dart';
import '../../../constansts/text_styles.dart';

class CommonBackground extends StatelessWidget {
  final Widget child;
  final Widget bottomNavigationBar;
  final bool showLogo;
  final VoidCallback? onNextPressed;
  final int pageno;

  const CommonBackground({
    Key? key,
    required this.child,
    required this.bottomNavigationBar,
    this.showLogo = false,
    this.onNextPressed,
   required this.pageno,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: bottomNavigationBar,
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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (showLogo)
                      Image.asset(
                        'assets/onboarding/appLogoblack.png',
                        width: 328.w,
                        height: 79.h,
                      ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 15,
                      width: 320.w,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50),
                        shape: BoxShape.rectangle,
                        color: ConstColors.backgroundColor,
                      ),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: (314.w / 13) * pageno,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  shape: BoxShape.rectangle,
                                  color: ConstColors.primaryColor,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    child,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
