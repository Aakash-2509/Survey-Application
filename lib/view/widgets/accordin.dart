import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../constansts/const_colors.dart';
import '../../constansts/text_styles.dart';

class Accordion extends StatefulWidget {
  final String title;
  // bool areAllfieldsNonEmpty;
  Accordion(
      {super.key,
      required this.title,
      required this.onClick,
      this.showContent = false,
      required this.leading});
  bool showContent;
  Widget leading;
  Widget onClick;
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  // bool widget.showContent = false;
  //bool areAllfieldsNonEmpty;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      child: Card(
        elevation: 10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(children: [
          ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(widget.showContent ? 0 : 10),
                    bottomRight: Radius.circular(widget.showContent ? 0 : 10))),
            tileColor:
                widget.showContent ? Color(0xFF00677E) : Color(0xFF00677E),
            title: Row(
              children: [
                widget.leading,
                Gap(10.w),
                Text(
                  widget.title,
                  style: getTextTheme().displayLarge,
                ),
              ],
            ),
            trailing:
                //  areAllfieldsNonEmpty ? Icon(Icons.check) : Icon(Icons.clear),
                InkWell(
              child: Icon(
                //  areAllfieldsNonEmpty ? Icon(Icons.check) : Icon(Icons.clear)

                widget.showContent
                    ? (Icons.keyboard_arrow_up_rounded)
                    : Icons.keyboard_arrow_down_rounded,
                color: ConstColors.backgroundColor,
              ),
              onTap: () {
                setState(() {
                  //  return widget.onClick();
                  widget.showContent = !widget.showContent;
                });
              },
            ),
            onTap: () {
              setState(() {
                //  return widget.onClick();
                widget.showContent = !widget.showContent;
              });
            },
          ),
          widget.showContent
              ? Container(
                  width: 360.w,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                      color: Color(0xFF00677E),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                            10,
                          ),
                          bottomRight: Radius.circular(10))),
                  child: widget.onClick,
                )
              : Container()
        ]),
      ),
    );
  }
}
