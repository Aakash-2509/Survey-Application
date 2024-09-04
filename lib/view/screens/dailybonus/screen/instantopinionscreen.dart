import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/screens/dailybonus/body/customalertdailogbox.dart';
import 'package:borderaccess/view/screens/dailybonus/body/customradioconatiner.dart';
import 'package:borderaccess/view/widgets/common_appbar.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../constansts/const_colors.dart';

class Instantopinionscreen extends StatefulWidget {
  const Instantopinionscreen({super.key});

  @override
  State<Instantopinionscreen> createState() => _InstantopinionscreenState();
}

class _InstantopinionscreenState extends State<Instantopinionscreen> {
  String _selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QAppBar(
        title: Text(
          "Back to Daily Bonus Zone",
          style: getTextTheme().bodyLarge,
        ),
        onTapBackButton: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          children: [
            Container(
              height: 196.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: ConstColors.backgroundColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 10,
                    width: 360.w,
                    decoration: const BoxDecoration(
                      color: ConstColors.containerBottomColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Instant Opinion",
                          style: getTextTheme().displayLarge!.copyWith(
                                color: ConstColors.containerBottomColor,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur. Malesuada praesent lobortis semper mollis dolor. Tellus imperdiet neque pretium suspendisse.",
                          style: getTextTheme().headlineMedium!.copyWith(
                                fontSize: 16,
                              ),
                        ),
                        const Gap(8),
                        Container(
                          height: 26.h,
                          width: 105.w,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF0194A8), Color(0xFFB19CD9)],
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Earn xx points",
                              style: getTextTheme().displayLarge!.copyWith(
                                    fontSize: 14.sp,
                                  ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 24.h),
            Expanded(
              child: ListView(
                children: [
                  CustomRadioContainer(
                    option: 'Option 1',
                    selectedOption: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                  const Gap(16),
                  CustomRadioContainer(
                    option: 'Option 2',
                    selectedOption: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                  const Gap(16),
                  CustomRadioContainer(
                    option: 'Option 3',
                    selectedOption: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                  const Gap(16),
                  CustomRadioContainer(
                    option: 'Option 4',
                    selectedOption: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            RoundedButton(
              press: () {
                context.push("/instantopinionendscreen");
              },
              text: Text(
                "Submit",
                style: getTextTheme().headlineLarge!.copyWith(
                      color: ConstColors.backgroundColor,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
