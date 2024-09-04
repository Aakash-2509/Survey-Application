import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/global/appString.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<Widget> _buildPageView() {
    return [
      _buildPage(
        'assets/onboarding/Onboarding1.png',
        Appstring.heythere,
        Appstring.join6,
      ),
      _buildPage(
        'assets/onboarding/Onboarding2.png',
        Appstring.voicepower,
        Appstring.onboarding2,
      ),
      _buildPage(
        'assets/onboarding/Onboarding3.png',
        Appstring.joincommunity,
        Appstring.onboarding3,
      ),
    ];
  }

  Widget _buildPage(String imagePath, String title, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60, bottom: 40),
          child: Image.asset(
            height: 200.h,
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Text(title,
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 32)),
        SizedBox(height: 20.h),
        Padding(
          padding: const EdgeInsets.only(right: 50, left: 50),
          child: Text(
            description,
            style: getTextTheme().headlineMedium!.copyWith(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildStepIndicator() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SmoothPageIndicator(
          controller: _pageController, // PageController
          count: 3, // Number of pages
          effect: const ScaleEffect(
            // Choose the effect you prefer (e.g., WormEffect, SlideEffect, etc.)
            dotWidth: 10,
            dotHeight: 10,
            activeDotColor: ConstColors.primaryColor,
            dotColor: ConstColors.shadowColor,
          ),
        ),
        SizedBox(height: 40.h),
        RoundedButton(
          width: 343.w,
          press: () {
            context.push('/onboardwelcome');
          },
          text: Text(
            Appstring.joinus,
            style: getTextTheme().displayLarge,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20.h),
        Text(Appstring.alreadymember, style: getTextTheme().titleLarge!),
        SizedBox(height: 10.h),
        GestureDetector(
          onTap: () {
            context.push("/signin");
          },
          child: Text(
            Appstring.signin,
            style: getTextTheme()
                .headlineLarge!
                .copyWith(decoration: TextDecoration.underline, fontSize: 20),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/onboarding/OnboardingBackground.jpg', // Replace with your background image asset path
                fit: BoxFit.cover,
              ),
            ),
            PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: _buildPageView(),
            ),
            Positioned(
              top: 10.0.sp,
              right: 10.0.sp,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.black),
                onPressed: () {
                  // Handle close button press
                  Navigator.of(context).pop();
                },
              ),
            ),
            Positioned(
              bottom: 30.0,
              left: 0.0,
              right: 0.0,
              child: _buildStepIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
