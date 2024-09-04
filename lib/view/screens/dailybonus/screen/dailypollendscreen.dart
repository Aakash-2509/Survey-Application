import 'package:borderaccess/view/screens/dailybonus/body/topmessageconatiner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';

import '../../../widgets/common_appbar.dart';

class PollResultsScreen extends StatelessWidget {
  final String selectedOption;
  final List<String> options;
  final List<int> percentages;

  const PollResultsScreen({
    super.key,
    required this.selectedOption,
    required this.options,
    required this.percentages,
  });

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
            const TopMessageConatiner(),
            SizedBox(height: 24.h),
            Column(
              children: List.generate(
                options.length,
                (index) {
                  return Container(
                    width: 360.w,
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 8.sp),
                    decoration: BoxDecoration(
                      color: ConstColors.backgroundColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: (percentages[index] / 100) * 328.w,
                              decoration: BoxDecoration(
                                color: options[index] == selectedOption
                                    ? ConstColors.primaryColor20
                                    : ConstColors.primaryColor60,
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                            ),
                            child: Text(
                              options[index],
                              style: getTextTheme().headlineMedium!.copyWith(
                                    fontSize: 16.sp,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                            ),
                            child: Text(
                              "${percentages[index].toString()}%",
                              style: getTextTheme().headlineMedium!.copyWith(
                                    fontSize: 16.sp,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
