import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../../constansts/const_colors.dart';
import '../../../../constansts/text_styles.dart';
import '../../../widgets/common_background_priority.dart';
import '../../../widgets/common_checkbox.dart';
import '../../../widgets/custom_roundedbutton.dart';

class PriorityProfiler5 extends StatefulWidget {
  const PriorityProfiler5({Key? key}) : super(key: key);

  @override
  State<PriorityProfiler5> createState() => _PriorityProfiler5State();
}

class _PriorityProfiler5State extends State<PriorityProfiler5> {
  List<String> flyingStyles = []; // List to store selected flying styles

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CommonBackground(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: RoundedButton(
          width: 343.w,
          press: () {
            if (flyingStyles.isEmpty) {
              _showToast('Please select at least one option.');
            } else {
              context.push('/priorityprofiler6');
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
      pageno: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text(
            'Tech talk time! Which of the following electronic products do you own?',
            style: getTextTheme().headlineLarge!.copyWith(fontSize: 20.sp),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCheckbox(
                title: 'Desktop PC',
                isChecked: flyingStyles.contains('Desktop PC'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Desktop PC');
                    } else {
                      flyingStyles.remove('Desktop PC');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Laptop',
                isChecked: flyingStyles.contains('Laptop'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Laptop');
                    } else {
                      flyingStyles.remove('Laptop');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Domestic travel for leisure purpose',
                isChecked: flyingStyles
                    .contains('Domestic travel for leisure purpose'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Domestic travel for leisure purpose');
                    } else {
                      flyingStyles
                          .remove('Domestic travel for leisure purpose');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Printer',
                isChecked: flyingStyles.contains('Printer'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Printer');
                    } else {
                      flyingStyles.remove('Printer');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Tablet',
                isChecked: flyingStyles.contains('Tablet'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Tablet');
                    } else {
                      flyingStyles.remove('Tablet');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'An MP3 Player(such as an iPod Touch)',
                isChecked: flyingStyles
                    .contains('An MP3 Player(such as an iPod Touch)'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('An MP3 Player(such as an iPod Touch)');
                    } else {
                      flyingStyles
                          .remove('An MP3 Player(such as an iPod Touch)');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'An e-Reader (such as a Kindle or Nook)',
                isChecked: flyingStyles
                    .contains('An e-Reader (such as a Kindle or Nook)'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles
                          .add('An e-Reader (such as a Kindle or Nook)');
                    } else {
                      flyingStyles
                          .remove('An e-Reader (such as a Kindle or Nook)');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Memory Card',
                isChecked: flyingStyles.contains('Memory Card'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Memory Card');
                    } else {
                      flyingStyles.remove('Memory Card');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title:
                    'Basic mobile phone primarily used for calling and text messaging',
                isChecked: flyingStyles.contains(
                    'Basic mobile phone primarily used for calling and text messaging'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add(
                          'Basic mobile phone primarily used for calling and text messaging');
                    } else {
                      flyingStyles.remove(
                          'Basic mobile phone primarily used for calling and text messaging');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Camera',
                isChecked: flyingStyles.contains('Camera'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles.add('Camera');
                    } else {
                      flyingStyles.remove('Camera');
                    }
                  });
                },
              ),
              SizedBox(height: 15.h),
              CustomCheckbox(
                title: 'Smartphone (such as iPhone or Android)',
                isChecked: flyingStyles
                    .contains('Smartphone (such as iPhone or Android)'),
                onChanged: (isChecked) {
                  setState(() {
                    if (isChecked) {
                      flyingStyles
                          .add('Smartphone (such as iPhone or Android)');
                    } else {
                      flyingStyles
                          .remove('Smartphone (such as iPhone or Android)');
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
