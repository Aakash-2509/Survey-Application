import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/global/appString.dart';
import 'package:borderaccess/view/screens/predict_and_win_screen/body/selectableoption.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TeamSelectionSection extends StatefulWidget {
  const TeamSelectionSection({super.key});

  @override
  _TeamSelectionSectionState createState() => _TeamSelectionSectionState();
}

class _TeamSelectionSectionState extends State<TeamSelectionSection> {
  String _selectedOption = '';
  bool _isSubmitted = false;

  final List<String> _options = [
    'Royal Challengers Bangalore',
    'Mumbai Indians',
    'Draw',
  ];
  List<int> percentage = [20, 60, 20]; // Example percentages for options

  void _toggleSelection(int index) {
    setState(() {
      _selectedOption = _options[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ConstColors.backgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  "assets/dailybonuszone/HaarCB.png",
                ),
              ),
            ),
            Text(
              Appstring.vs,
              style: getTextTheme().displayLarge!.copyWith(
                    fontStyle: FontStyle.italic,
                    fontSize: 34.sp,
                  ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ConstColors.backgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  "assets/dailybonuszone/AmbaniIndians.png",
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Royal Challengers\nBangalore",
              textAlign: TextAlign.center,
              style: getTextTheme().displayLarge!.copyWith(
                    fontSize: 12.sp,
                  ),
            ),
            const Gap(40),
            Text(
              "Mumbai Indians",
              textAlign: TextAlign.center,
              style: getTextTheme().displayLarge!.copyWith(
                    fontSize: 12.sp,
                  ),
            ),
          ],
        ),
        const Gap(70),
        _isSubmitted
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${Appstring.responseText} :",
                    style: getTextTheme().headlineMedium!.copyWith(
                          fontSize: 16.sp,
                        ),
                  ),
                  Text(
                    Appstring.whoWillWinText,
                    style: getTextTheme().headlineLarge,
                  ),
                ],
              )
            : const SizedBox(),
        // Result containers for options
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: List.generate(_options.length, (index) {
              return Column(
                children: [
                  _isSubmitted
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: 54,
                          margin: EdgeInsets.symmetric(vertical: 8.sp),
                          decoration: BoxDecoration(
                            color: ConstColors.backgroundColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  color: ConstColors.primaryColor,
                                )),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.w),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.w),
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
                          ),
                        )
                      : SelectableOption(
                          isChecked: _options[index] == _selectedOption,
                          text: _options[index],
                          onTap: () => _toggleSelection(index),
                          containerColor: _options[index] == _selectedOption
                              ? Colors.black
                              : ConstColors.backgroundColor,
                        ),
                  const Gap(10), // Adjust the gap size as needed
                ],
              );
            }),
          ),
        ),
        _isSubmitted
            ? SizedBox(
                width: 220,
                height: 100,
                child: Text(
                  textAlign: TextAlign.center,
                  Appstring.thankyouText,
                  style: getTextTheme().headlineMedium!.copyWith(
                        fontSize: 16.sp,
                      ),
                ),
              )
            : RoundedButton(
                width: 126.0,
                press: () {
                  setState(() {
                    _isSubmitted = true;
                  });
                },
                text: Text(
                  Appstring.submitButtonText,
                  style: getTextTheme().displayLarge!.copyWith(
                        fontSize: 16.sp,
                      ),
                ),
              ),
      ],
    );
  }
}
