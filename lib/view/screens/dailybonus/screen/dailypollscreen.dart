import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/screens/dailybonus/body/customalertdailogbox.dart';
import 'package:borderaccess/view/screens/dailybonus/body/customradioconatiner.dart';
import 'package:borderaccess/view/screens/dailybonus/body/topmessageconatiner.dart';
import 'package:borderaccess/view/screens/dailybonus/screen/dailypollendscreen.dart';
import 'package:borderaccess/view/widgets/common_appbar.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
// Import other necessary packages

class Dailypollscreen extends StatefulWidget {
  const Dailypollscreen({super.key});

  @override
  _DailypollscreenState createState() => _DailypollscreenState();
}

class _DailypollscreenState extends State<Dailypollscreen> {
  String _selectedOption = '';
  bool _isSubmitted = false;

  final List<String> _options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4'
  ];
  List<int> percentage = [18, 68, 75, 35];

  void _showThankYouDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Customalertdailogbox();
      },
    );
    setState(() {
      _isSubmitted = true;
    });
  }

  // void _navigateToPollResults() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => PollResultsScreen(
  //         selectedOption: _selectedOption,
  //         options: _options,
  //         percentages: percentage,
  //       ),
  //     ),
  //   );
  // }

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopMessageConatiner(),
              SizedBox(height: 24.h),
              _isSubmitted
                  ? Column(
                      children: List.generate(
                        _options.length,
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
                                      width: (percentage[index] / 100) * 328.w,
                                      decoration: BoxDecoration(
                                        color:
                                            _options[index] == _selectedOption
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
                                      _options[index],
                                      style: getTextTheme()
                                          .headlineMedium!
                                          .copyWith(
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
                                      "${percentage[index].toString()}%",
                                      style: getTextTheme()
                                          .headlineMedium!
                                          .copyWith(
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
                    )
                  : ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: _options.map((option) {
                        return Column(
                          children: [
                            CustomRadioContainer(
                              option: option,
                              selectedOption: _selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  _selectedOption = value!;
                                });
                              },
                            ),
                            const Gap(16),
                          ],
                        );
                      }).toList(),
                    ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: RoundedButton(
          press: () {
            if (_selectedOption.isNotEmpty) {
              // SHOW ALERT POP-UP
              _showThankYouDialog();
              // For displaying results on new screens
              // _navigateToPollResults();
            }
          },
          text: Text(
            "Submit",
            style: getTextTheme().headlineLarge!.copyWith(
                  color: ConstColors.backgroundColor,
                ),
          ),
        ),
      ),
    );
  }
}
