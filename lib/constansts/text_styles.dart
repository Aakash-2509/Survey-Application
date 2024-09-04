import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'const_colors.dart';

TextTheme getTextTheme() {
  return TextTheme(
    headlineLarge: GoogleFonts.arsenal(
      fontWeight: FontWeight.w700,
      color: ConstColors.black,
      decoration: TextDecoration.none,
      fontSize: 16.sp,
    ),
    headlineMedium: GoogleFonts.arsenal(
      fontWeight: FontWeight.w400,
      color: ConstColors.black,
      decoration: TextDecoration.none,
      fontSize: 14.sp,
    ),
    headlineSmall: GoogleFonts.arsenal(
      fontWeight: FontWeight.w400,
      color: ConstColors.black,
      decoration: TextDecoration.none,
      fontSize: 10.sp,
    ),
    bodyLarge: GoogleFonts.arsenal(
      fontWeight: FontWeight.w400,
      color: ConstColors.backgroundColor,
      decoration: TextDecoration.none,
      fontSize: 16.sp,
    ),
    bodyMedium: GoogleFonts.arsenal(
        fontWeight: FontWeight.w500,
        color: ConstColors.black,
        fontSize: 14.sp,
        decoration: TextDecoration.underline,
        decorationColor: ConstColors.black),
    bodySmall: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.darkGrey,
      fontSize: 18.sp,
    ),
    titleLarge: GoogleFonts.arsenal(
      fontWeight: FontWeight.w400,
      color: ConstColors.darkGrey,
      decoration: TextDecoration.none,
      fontSize: 14.sp,
    ),
    titleMedium: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.darkGrey,
      decoration: TextDecoration.none,
      fontSize: 12.sp,
    ),
    titleSmall: GoogleFonts.arsenal(
      fontWeight: FontWeight.normal,
      color: ConstColors.darkGrey,
      decoration: TextDecoration.none,
      fontSize: 10.sp,
    ),
    displayLarge: GoogleFonts.arsenal(
      fontWeight: FontWeight.w700,
      color: ConstColors.backgroundColor,
      decoration: TextDecoration.none,
      fontSize: 14.sp,
    ),
    displayMedium: GoogleFonts.arsenal(
      fontWeight: FontWeight.normal,
      color: ConstColors.primaryColor,
      fontSize: 13.sp,
      decoration: TextDecoration.underline,
      decorationColor: ConstColors.primaryColor,
    ),
    displaySmall: GoogleFonts.arsenal(
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      color: ConstColors.backgroundColor,
      decoration: TextDecoration.none,
    ),
  );
}

//Light TextTheme
TextTheme getLightTextTheme() {
  return TextTheme(
    headlineLarge: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.black,
      fontSize: 14.sp,
    ),
    headlineMedium: GoogleFonts.arsenal(
      fontWeight: FontWeight.w400,
      color: ConstColors.black,
      fontSize: 12.sp,
    ),
    headlineSmall: GoogleFonts.arsenal(
      fontWeight: FontWeight.w400,
      color: ConstColors.black,
      fontSize: 10.sp,
    ),
    bodyLarge: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.black,
      fontSize: 14.sp,
    ),
    bodyMedium: GoogleFonts.arsenal(
        fontWeight: FontWeight.w500,
        color: ConstColors.black,
        fontSize: 14.sp,
        decoration: TextDecoration.underline,
        decorationColor: ConstColors.black),
    bodySmall: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.darkGrey,
      fontSize: 18.sp,
    ),
    titleLarge: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.darkGrey,
      fontSize: 14.sp,
    ),
    titleMedium: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.darkGrey,
      fontSize: 12.sp,
    ),
    titleSmall: GoogleFonts.arsenal(
      fontWeight: FontWeight.normal,
      color: ConstColors.darkGrey,
      fontSize: 10.sp,
    ),
    displayLarge: GoogleFonts.arsenal(
      fontWeight: FontWeight.w700,
      color: ConstColors.backgroundColor,
      fontSize: 13.sp,
    ),
    displayMedium: GoogleFonts.arsenal(
        fontWeight: FontWeight.normal,
        color: ConstColors.primaryColor,
        fontSize: 13.sp,
        decoration: TextDecoration.underline,
        decorationColor: ConstColors.primaryColor),
    displaySmall: GoogleFonts.arsenal(
      fontWeight: FontWeight.w400,
      fontSize: 13.sp,
      color: ConstColors.primaryColor,
    ),
  );
}

//Dark TextTheme
TextTheme getDarkTextTheme() {
  return TextTheme(
    headlineLarge: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.lightGrey,
      fontSize: 14.sp,
    ),
    headlineMedium: GoogleFonts.arsenal(
      fontWeight: FontWeight.w400,
      color: ConstColors.lightGrey,
      fontSize: 12.sp,
    ),
    headlineSmall: GoogleFonts.arsenal(
      fontWeight: FontWeight.w400,
      color: ConstColors.lightGrey,
      fontSize: 10.sp,
    ),
    bodyLarge: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.lightGrey,
      fontSize: 14.sp,
    ),
    bodyMedium: GoogleFonts.arsenal(
        fontWeight: FontWeight.w500,
        color: ConstColors.lightGrey,
        fontSize: 14.sp,
        decoration: TextDecoration.underline,
        decorationColor: ConstColors.lightGrey),
    bodySmall: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.lightGrey,
      fontSize: 18.sp,
    ),
    titleLarge: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.lightGrey,
      fontSize: 14.sp,
    ),
    titleMedium: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.lightGrey,
      fontSize: 12.sp,
    ),
    titleSmall: GoogleFonts.arsenal(
      fontWeight: FontWeight.normal,
      color: ConstColors.lightGrey,
      fontSize: 10.sp,
    ),
    displayLarge: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      color: ConstColors.black,
      fontSize: 13.sp,
    ),
    displayMedium: GoogleFonts.arsenal(
        fontWeight: FontWeight.normal,
        color: ConstColors.primaryColor,
        fontSize: 13.sp,
        decoration: TextDecoration.underline,
        decorationColor: ConstColors.primaryColor),
    displaySmall: GoogleFonts.arsenal(
      fontWeight: FontWeight.w500,
      fontSize: 13.sp,
      color: ConstColors.primaryColor,
    ),
  );
}
