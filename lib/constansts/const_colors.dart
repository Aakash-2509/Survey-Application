import 'package:flutter/material.dart';

class ConstColors {
  //primary color
  static const Color primaryColor = Color(0xFF0194A8);
  static const Color secondaryColor = Color(0xFFEEE9FD);
  static const Color scaffoldColor = Color(0xFFE6F4F6);
  static const Color grey = Color(0xFFEDEDED);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color darkGrey = Color(0xFF595D61);
  static const Color textColor = Color(0xFF333333);
  static const Color lightred = Color(0xFFFBE4E1);
  static const Color black1 = Color(0xFF333333);
  static const Color red = Color(0xFFDE3730);
    static const Color dividercolor = Color(0xFFE1E3E3);
  static const Color shadowColor = Color.fromARGB(255, 196, 196, 196);
  static const Color countColor = Color(0xFF800080);
  static const Color black = Color(0xFF333333);
  static const Color backgroundColor = Colors.white;
  static const Color containerBottomColor = Color(0xFF0194A8);
  static const Color dividerColor = Color(0xFF747778);
  static const Color bidToWinContainerColor = Color(0xFF4989B4);
  static const Color luckyJackpotContainerColor = Color(0xFF49A5A9);
  static const Color myWinsHintColor = Color(0xFFA9ACAC);
  static const Color playandwinContainerColor = Color(0xFF333333);
  static const Color semicircleColor = Color(0xFFFFFFFF);
  static const Color isPastDateColor = Color(0xFFFFDAD6);
  static const Color isFutureDateColor = Color(0xFFE1E1E1);
  static const Color calenderAppBarColor = Color(0xFF00677E);
  static const Color surveyTableButtonColor = Color(0xFF484646);
  static const Color textColor2 = Color(0xFFC4C7C8);
  static const Color primaryColor80 = Color(0xFFCCEAEE);
  static const Color primaryColor20 = Color(0xFF34A9B9);
  static const Color primaryColor60 = Color(0xFF99D4DC);
  static const Color primaryColor90 = Color(0xFFE6F4F6);
  static const Color cardStartText = Color(0xFF01A844);
//bottomnavigation Colors
  static const Color unselectedIconColor = Color(0xFF747778);

//appbar Color 333333
  static const Color appbarColor = Color(0xFF333333);
//
//Text color
  static const Color textColorBlack = Color(0xFF333333);
  static const Color textColorWhite = Colors.white;
  static const Color textColorGrey = Color.fromARGB(255, 196, 196, 196);
  static const Color textColorHyperLinkBlue = Colors.blueAccent;

  //waring Colors
  static const Color errorColor = Color.fromARGB(255, 255, 0, 0);
  static const Color successColor = Colors.green;
  static const Color winnerDailogColor = Color(0xFF00677E);
}

//Light Theme
const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF0194A8),
  onPrimary: Color(0xFFEEE9FD),
  primaryContainer: Color.fromARGB(255, 224, 224, 224),
  onPrimaryContainer: Color.fromARGB(255, 245, 245, 245),
  secondary: Color(0xFFEDEDED),
  onSecondary: Color(0xFFF9F9F9),
  secondaryContainer: Color(0xFF595D61),
  onSecondaryContainer: Color(0xFFC5C5C5),
  tertiary: Colors.black,
  error: Color.fromARGB(255, 255, 0, 0),
  onError: Color(0xFFEEE9FD),
  tertiaryContainer: Color(0xFFEEE9FD),
  surface: Color(0xFFF9F9F9),
  onSurface: Color(0xFF1C1B1F),
  shadow: Color.fromARGB(255, 196, 196, 196),
  surfaceTint: Colors.white,
);

//Dark Theme
const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF6F47EB),
  onPrimary: Color(0xFFEEE9FD),
  primaryContainer: Color(0xFF222223),
  onPrimaryContainer: Color.fromARGB(255, 245, 245, 245),
  secondary: Colors.white,
  onSecondary: Colors.white,
  secondaryContainer: Colors.white,
  onSecondaryContainer: Colors.white,
  tertiary: Color(0xFFF9F9F9),
  tertiaryContainer: Color.fromARGB(255, 64, 0, 255),
  error: Color.fromARGB(255, 255, 0, 0),
  onError: Colors.black54,
  surface: Color(0xFF333639),
  onSurface: Color.fromARGB(255, 201, 8, 8),
  shadow: Color.fromARGB(255, 100, 100, 100),
  surfaceTint: Colors.black,
);
