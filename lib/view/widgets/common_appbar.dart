import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

class QAppBar extends StatelessWidget implements PreferredSizeWidget {
  const QAppBar({
    super.key,
    required this.title,
    this.roundedAppBar = true,
    this.removeSnackBars = true,
    this.bottom,
    this.bottomHeight = 52,
    this.usePrimaryColor = false,
    this.actions,
    this.automaticallyImplyLeading = true,
    this.onTapBackButton,
    this.elevation,
    this.centerTitle = false,
  });

  final Widget title;
  final double? elevation;
  final Widget? bottom;
  final bool automaticallyImplyLeading;
  final Function()? onTapBackButton;
  final List<Widget>? actions;
  final bool roundedAppBar;
  final double bottomHeight;
  final bool removeSnackBars;
  final bool usePrimaryColor;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      elevation: elevation ?? (roundedAppBar ? 2 : 0),
      centerTitle: centerTitle,
      backgroundColor: ConstColors.appbarColor,
      surfaceTintColor: ConstColors.appbarColor,
      leading: automaticallyImplyLeading
          ? IconButton(
              color: Colors.transparent,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                color: ConstColors.backgroundColor,
                size: 25.sp,
              ),
            )
          : null,
      // titleTextStyle: GoogleFonts.nunito(
      //   textStyle: TextStyle(
      //     color: usePrimaryColor
      //         ? Theme.of(context).primaryColor
      //         : Theme.of(context).colorScheme.onTertiary,
      //     fontWeight: FontWeights.bold,
      //     fontSize: 18.0,
      //   ),
      // ),
      title: title,
      actions: actions,
      bottom: bottom != null
          ? PreferredSize(
              preferredSize: Size.fromHeight(bottomHeight),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context)
                      .colorScheme
                      .onTertiary
                      .withOpacity(0.08),
                ),
                child: bottom,
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => bottom == null
      ? const Size.fromHeight(kToolbarHeight)
      : Size.fromHeight(kToolbarHeight + bottomHeight);
}
