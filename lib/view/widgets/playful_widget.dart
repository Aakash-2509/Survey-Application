import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constansts/const_colors.dart';
import '../../constansts/text_styles.dart';

class PlayfulWays extends StatelessWidget {
  final String title;
  final String description;
  final String buttonTitle;
  final VoidCallback press;
  final Color color1;
  final Color color2;
  final Color color3;
  const PlayfulWays({
    super.key,
    required this.title,
    required this.description,
    required this.buttonTitle,
    required this.press,
    required this.color1,
    required this.color2,
    required this.color3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
              color3,
            ],
            // transform: GradientRotation(3.14 / 4),
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: getTextTheme()
                .displayLarge!
                .copyWith(fontWeight: FontWeight.w700),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: getTextTheme()
                .displayLarge!
                .copyWith(fontWeight: FontWeight.w400, fontSize: 14.sp),
          ),
          RoundedButton(
            width: 120.w,
            press: press,
            color: ConstColors.backgroundColor,
            text: Text(buttonTitle, style: getTextTheme().headlineLarge!),
          )
        ],
      ),
    );
  }
}

// PlayfulWays(
//                 title: "Bid to Win",
//                 description:
//                     "Lorem ipsum dolor sit amet consectetur. Sit sit aliquet molestie venenatis quam aa.",
//                 buttonTitle: 'Play',
//                 press: () {},
//                 color1: Color(0xFF3381B7),
//                 color2: Color(0xFF3381B7),
//                 color3: Color.fromARGB(255, 32, 79, 115),
//               ),
//               PlayfulWays(
//                 title: "Lucky Jackpot",
//                 description:
//                     "Lorem ipsum dolor sit amet consectetur. Sit sit aliquet molestie venenatis quam aa.",
//                 buttonTitle: 'Play',
//                 press: () {},
//                 color1: Color(0xFF40CCD2),
//                 color2: Color(0xFF40CCD2),
//                 color3: Color.fromARGB(255, 32, 79, 115),
//               ),
 // PlayfulWays(
              //   title: "Social Media Contests",
              //   description:
              //       "Lorem ipsum dolor sit amet consectetur. Sit sit aliquet molestie venenatis quam aa.",
              //   buttonTitle: 'Play',
              //   press: () {},
              //   color1: Color(0xFF40CCD2),
              //   color2: Color(0xFF40CCD2),
              //   color3: Color.fromARGB(255, 42, 134, 137),
              // ),
              // PlayfulWays(
              //   title: "Lucky Jackpot",
              //   description:
              //       "Lorem ipsum dolor sit amet consectetur. Sit sit aliquet molestie venenatis quam aa.",
              //   buttonTitle: 'Play',
              //   press: () {},
              //   color1: Color(0xFFEFBF24),
              //   color2: Color(0xFFEFBF24),
              //   color3: Color.fromARGB(255, 147, 118, 22),
              // )