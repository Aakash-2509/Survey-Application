import 'dart:async';

import 'package:borderaccess/constansts/text_styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';

class ColumnSwitcher extends StatefulWidget {
  @override
  _ColumnSwitcherState createState() => _ColumnSwitcherState();
}

class _ColumnSwitcherState extends State<ColumnSwitcher> {
  bool showFirstColumn = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        showFirstColumn = !showFirstColumn;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSwitcher(
        duration: Duration(seconds: 1),
        child: !showFirstColumn
            ? Column(
                children: [
                  Text(
                    'To get personalized surveys',
                    style: getTextTheme().headlineMedium,
                  ),
                  GradientText(
                    'Complete to 100%',
                    style:
                        getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
                    gradientType: GradientType.linear,
                    gradientDirection: GradientDirection.ttb,
                    radius: .4,
                    colors: [Color(0xFF0194A8), Color(0xFFB19CD9)],
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Your Profile Status',
                    style: getTextTheme().headlineMedium,
                  ),
                  Text(
                    '70% Completed',
                    style:
                        getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
                  ),
                ],
              ),
      ),
    );
  }
}
