import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import '../../../widgets/common_background_priority.dart';
import '../../../widgets/common_checkbox.dart';
import '../../../widgets/common_radiobutton.dart';
import '../../../widgets/custom_roundedbutton.dart';

class PriorityProfiler6 extends StatefulWidget {
  const PriorityProfiler6({Key? key}) : super(key: key);

  @override
  State<PriorityProfiler6> createState() => _PriorityProfiler6State();
}

class _PriorityProfiler6State extends State<PriorityProfiler6> {
  String? carstatus;
  List<String> flyingStyles = []; // List to store selected flying styles

  @override
  Widget build(BuildContext context) {
    return CommonBackground(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: RoundedButton(
          width: 343.w,
          press: () {
            if (flyingStyles.isEmpty) {
              Fluttertoast.showToast(
                msg: "Please select at least one alcohol drink",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.red,
                textColor: Colors.white,
              );
            } else {
              context.push('/priorityprofiler7');
            }
          },
          color: flyingStyles.isNotEmpty
              ? ConstColors.primaryColor
              : ConstColors.unselectedIconColor,
          text: Text(
            "Next",
            style: getTextTheme().displayLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      showLogo: true,
      pageno: 6,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          Text(
            'Cheers to your taste buds! Pick your favorite alcohol drinks that you consume.',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCheckbox(
                title: 'Beer',
                isChecked: flyingStyles.contains('Beer'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Beer');
                    } else {
                      flyingStyles.remove('Beer');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Wine',
                isChecked: flyingStyles.contains('Wine'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Wine');
                    } else {
                      flyingStyles.remove('Wine');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Sparkling Wine',
                isChecked: flyingStyles.contains('Sparkling Wine'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Sparkling Wine');
                    } else {
                      flyingStyles.remove('Sparkling Wine');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Champagne',
                isChecked: flyingStyles.contains('Champagne'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Champagne');
                    } else {
                      flyingStyles.remove('Champagne');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Port',
                isChecked: flyingStyles.contains('Port'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Port');
                    } else {
                      flyingStyles.remove('Port');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Brandy',
                isChecked: flyingStyles.contains('Brandy'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Brandy');
                    } else {
                      flyingStyles.remove('Brandy');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Scotch Whiskey',
                isChecked: flyingStyles.contains('Scotch Whiskey'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Scotch Whiskey');
                    } else {
                      flyingStyles.remove('Scotch Whiskey');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Canadian Whiskey',
                isChecked: flyingStyles.contains('Canadian Whiskey'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Canadian Whiskey');
                    } else {
                      flyingStyles.remove('Canadian Whiskey');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Irish Whiskey',
                isChecked: flyingStyles.contains('Irish Whiskey'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Irish Whiskey');
                    } else {
                      flyingStyles.remove('Irish Whiskey');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Port',
                isChecked: flyingStyles.contains('Port'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Port');
                    } else {
                      flyingStyles.remove('Port');
                    }
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
