import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/screens/onboarding/screen/onboaeding_welcomescreen.dart';
import 'package:borderaccess/view/widgets/common_appbar.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../survey_hub_table/surveyHubTableScreen.dart';
import 'body/bounus_points_widget.dart';
import 'body/daily_activities.dart';
import 'body/my_daily_agenda_banner.dart';

class DailyAgenta extends StatefulWidget {
  const DailyAgenta({super.key});

  @override
  State<DailyAgenta> createState() => _DailyAgentaState();
}

class _DailyAgentaState extends State<DailyAgenta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.scaffoldColor,
      appBar: QAppBar(
        title: Text(
          "Back to Home",
          style: getTextTheme()
              .headlineMedium!
              .copyWith(color: ConstColors.backgroundColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(10.h),
            const MyDailyAgendaBanner(),
            Gap(
              10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${DateFormat('MMMM').format(DateTime.now())} ${DateFormat('yyyy').format(DateTime.now())}",
                    style: getTextTheme().headlineLarge,
                  ),
                  IconButton(
                    onPressed: () {
                      final List<DateTime> highlightedDates = [
                        DateTime(2024, 6, 25),
                        DateTime(2024, 6, 29),
                        DateTime(2024, 7, 2),
                      ];

                      showCalender(context, highlightedDates);
                    },
                    icon: Image.asset(
                      'assets/dailyagenta/calendaricon.png',
                      width: 15.sp,
                      height: 25.sp,
                    ),
                  ),
                ],
              ),
            ),
            Gap(10.h),
            const SizedBox(height: 100, child: DateList()),
            Gap(10.h),
            DailyActivities(),
            Gap(10.h),
            SizedBox(
              width: 360.w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: OutlinedButton(
                    onPressed: () {
                      dailyAgendaBenfitPopup(context);
                    },
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        side: BorderSide(color: ConstColors.primaryColor),
                        backgroundColor: ConstColors.backgroundColor),
                    child: Text(
                      'Learn more about benefits',
                      style: getTextTheme()
                          .headlineLarge!
                          .copyWith(color: ConstColors.primaryColor),
                    )),
              ),
            ),
            Gap(10.h),
            BonusPointsWidget(),
            Gap(10.h)
          ],
        ),
      ),
    );
  }

  Future<dynamic> showCalender(
      BuildContext context, List<DateTime> highlightedDates) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        content: SizedBox(
          height: 400,
          width: 400,
          child: SfDateRangePicker(
              view: DateRangePickerView.month,
              backgroundColor: Colors.white,
              monthCellStyle: DateRangePickerMonthCellStyle(
                specialDatesDecoration: BoxDecoration(
                  color: ConstColors.primaryColor,
                  border: Border.all(color: ConstColors.primaryColor, width: 1),
                  shape: BoxShape.circle,
                ),
                specialDatesTextStyle: getTextTheme().titleMedium,
              ),
              monthViewSettings: DateRangePickerMonthViewSettings(
                  specialDates: highlightedDates),
              selectionMode: DateRangePickerSelectionMode.single,
              onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                DateTime selectedDate = args.value;
                if (true) {
                  // DateTime now = DateTime.now();
                  // if (selectedDate.isAfter(now) ||
                  //     selectedDate.isAtSameMomentAs(now)) {
                  //   toursControlleradd.selectedDate.value = selectedDate;
                  //   toursControlleradd.selectDateId.value =
                  //       toursControlleradd.toursAvabilitydata
                  //           .firstWhere(
                  //             (element) =>
                  //                 element.unavailableDate == selectedDate,
                  //             orElse: () => DateTimeModel(
                  //                 id: -1,
                  //                 tour: -1,
                  //                 unavailableDate: DateTime.now()),
                  //           )
                  //           .id;
                  //   print(
                  //       "selected date id is this ${toursControlleradd.selectDateId.value}");
                  Navigator.pop(context); // Close the dialog
                } else {
                  Fluttertoast.showToast(msg: 'Please select valid date');
                }
              }
              //  else {
              //   Fluttertoast.showToast(
              //       msg: 'Please select a highlighted date.');
              // }
              //  },
              ),
        ),
      ),
    );
  }

  Future<dynamic> dailyAgendaBenfitPopup(BuildContext context) {
    return showModalBottomSheet(
      scrollControlDisabledMaxHeightRatio: 400.h,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      context: context,
      builder: (BuildContext context1) {
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.sp, left: 10.sp),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context1).pop();
                          },
                          icon: Icon(
                            Icons.close_rounded,
                            color: ConstColors.shadowColor,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text('Daily Agenda Benefits',
                      style: getTextTheme().headlineLarge),
                ),
                Gap(10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    'Track your weekly progress and earn badges for completing the allotted tasks per week.\n\nEach extra point gets you a little more closer to your favorite voucher.\n\nStay motivated and see your achievements stack up!',
                    style: getTextTheme().headlineMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Table(
                    border: const TableBorder(
                      horizontalInside: BorderSide(color: ConstColors.grey),
                      verticalInside: BorderSide(
                          color: ConstColors.backgroundColor, width: 2),
                      bottom: BorderSide(color: ConstColors.grey),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    children: [
                      TableRow(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                              ),
                              color: ConstColors.calenderAppBarColor,
                            ),
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                'Complete',
                                textAlign: TextAlign.center,
                                style: getTextTheme()
                                    .displayLarge!
                                    .copyWith(fontSize: 12.sp),
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            color: ConstColors.calenderAppBarColor,
                            child: Center(
                              child: Text(
                                'Increase Score to',
                                textAlign: TextAlign.center,
                                style: getTextTheme()
                                    .displayLarge!
                                    .copyWith(fontSize: 12.sp),
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                              color: ConstColors.calenderAppBarColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Earn Bonus',
                                textAlign: TextAlign.center,
                                style: getTextTheme()
                                    .displayLarge!
                                    .copyWith(fontSize: 12.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: ConstColors.backgroundColor,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ConstColors.shadowColor,
                                        width: 1))),
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                '7 days',
                                textAlign: TextAlign.center,
                                style: getTextTheme().headlineMedium,
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                color: ConstColors.backgroundColor,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ConstColors.shadowColor,
                                        width: 1))),
                            child: Center(
                              child: Text(
                                '25 %',
                                textAlign: TextAlign.center,
                                style: getTextTheme().headlineMedium,
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                color: ConstColors.backgroundColor,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ConstColors.shadowColor,
                                        width: 1))),
                            child: Center(
                              child: Text(
                                '50 Points',
                                textAlign: TextAlign.center,
                                style: getTextTheme().headlineMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: ConstColors.backgroundColor,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ConstColors.shadowColor,
                                        width: 1))),
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                '14 days',
                                textAlign: TextAlign.center,
                                style: getTextTheme().headlineMedium,
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                color: ConstColors.backgroundColor,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ConstColors.shadowColor,
                                        width: 1))),
                            child: Center(
                              child: Text(
                                '50 %',
                                textAlign: TextAlign.center,
                                style: getTextTheme().headlineMedium,
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                color: ConstColors.backgroundColor,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ConstColors.shadowColor,
                                        width: 1))),
                            child: Center(
                              child: Text(
                                '100 Points',
                                textAlign: TextAlign.center,
                                style: getTextTheme().headlineMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: ConstColors.backgroundColor,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ConstColors.shadowColor,
                                        width: 1))),
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                '21 days',
                                textAlign: TextAlign.center,
                                style: getTextTheme().headlineMedium,
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                color: ConstColors.backgroundColor,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ConstColors.shadowColor,
                                        width: 1))),
                            child: Center(
                              child: Text(
                                '75 %',
                                textAlign: TextAlign.center,
                                style: getTextTheme().headlineMedium,
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                color: ConstColors.backgroundColor,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ConstColors.shadowColor,
                                        width: 1))),
                            child: Center(
                              child: Text(
                                '150 Points',
                                textAlign: TextAlign.center,
                                style: getTextTheme().headlineMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: ConstColors.backgroundColor,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ConstColors.shadowColor,
                                        width: 1))),
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                '31 days',
                                textAlign: TextAlign.center,
                                style: getTextTheme().headlineMedium,
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                color: ConstColors.backgroundColor,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ConstColors.shadowColor,
                                        width: 1))),
                            child: Center(
                              child: Text(
                                '100 %',
                                textAlign: TextAlign.center,
                                style: getTextTheme().headlineMedium,
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                color: ConstColors.backgroundColor,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ConstColors.shadowColor,
                                        width: 1))),
                            child: Center(
                              child: Text(
                                '200 Points',
                                textAlign: TextAlign.center,
                                style: getTextTheme().headlineMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Gap(20.h)
              ],
            ),
          ),
        );
      },
    );
  }
}

class DateList extends StatelessWidget {
  const DateList({super.key});

  @override
  Widget build(BuildContext context) {
    List<DateTime> dates = getDatesForCurrentMonth();

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dates.length,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        DateTime date = dates[index];
        bool isSelected =
            date.day == DateTime.now().day; // Example of current day selection
        return DateTile(date: date, isSelected: isSelected);
      },
    );
  }

  List<DateTime> getDatesForCurrentMonth() {
    DateTime now = DateTime.now();
    int totalDays = DateTime(now.year, now.month + 1, 0).day;
    List<DateTime> dates = [];

    for (int i = now.day; i <= totalDays; i++) {
      dates.add(DateTime(now.year, now.month, i));
    }

    return dates;
  }
}

class DateTile extends StatelessWidget {
  final DateTime date;
  final bool isSelected;

  DateTile({required this.date, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: isSelected ? ConstColors.backgroundColor : Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
            border: isSelected
                ? Border.all(color: ConstColors.primaryColor, width: 1)
                : Border.all(color: ConstColors.shadowColor, width: 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                DateFormat('EEE').format(date),
                style: isSelected
                    ? getTextTheme()
                        .headlineLarge!
                        .copyWith(color: ConstColors.primaryColor)
                    : getTextTheme()
                        .headlineMedium!
                        .copyWith(color: Colors.grey),
              ),
              Text(
                DateFormat('d').format(date),
                style: isSelected
                    ? getTextTheme()
                        .headlineLarge!
                        .copyWith(color: ConstColors.primaryColor)
                    : getTextTheme()
                        .headlineLarge!
                        .copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
        isSelected
            ? Stack(
                children: [
                  Icon(
                    CupertinoIcons.chevron_down,
                    color: ConstColors.primaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Icon(
                      CupertinoIcons.chevron_down,
                      color: ConstColors.primaryColor,
                    ),
                  ),
                ],
              )
            : SizedBox.shrink()
      ],
    );
  }
}
