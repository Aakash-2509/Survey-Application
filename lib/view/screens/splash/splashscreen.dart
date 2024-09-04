import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> initialization() async {}

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      backgroundImage: Image.asset("assets/onboarding/splashbackground.png"),
      childWidget: SizedBox(
        width: 200.w,

        child: Image.asset("assets/onboarding/applogo.png"),
        // child: FlutterLogo(
        //   size: 200,
        // ),
      ),
      duration: const Duration(milliseconds: 1),
      animationDuration: const Duration(milliseconds: 3000),
      onAnimationEnd: () {
        //  context.go('/onboardingpriority');
        // context.go('/dummyscreen');
        // context.go('/trackyourprogress');
        // context.go('/surveyhubtable');
        // context.go('/placebidscreen');
         context.go('/onboarding');

      },
    );
  }
}
