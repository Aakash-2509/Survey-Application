import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart'; // For date formatting
import '../../widgets/common_appbar.dart';

class TrackYourProgressScreen extends StatefulWidget {
  const TrackYourProgressScreen({super.key});

  @override
  State<TrackYourProgressScreen> createState() =>
      _TrackYourProgressScreenState();
}

class _TrackYourProgressScreenState extends State<TrackYourProgressScreen> {
  DateTime selectedDate = DateTime.now();
  DateTime focusedDate = DateTime.now();
  var _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const QAppBar(
        automaticallyImplyLeading: false,
        title: Text("Track Your Progress"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 65,
              width: 360,
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: ConstColors.calenderAppBarColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: DateFormat.yMMMM()
                                  .format(focusedDate)
                                  .split(' ')[0], // Display only the month part
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                color: ConstColors.backgroundColor,
                              ),
                            ),
                            const WidgetSpan(
                                child: SizedBox(
                                    width: 4)), // Adjust spacing as needed
                            const TextSpan(
                              text: 'Bonus : ',
                              style: TextStyle(
                                fontSize: 20,
                                color: ConstColors.backgroundColor,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                              text: '0 Coins , 0 Points',
                              style: TextStyle(
                                fontSize: 16,
                                color: ConstColors.backgroundColor,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: ConstColors.backgroundColor,
                            ),
                          ),
                          child: IconButton(
                            iconSize: 10,
                            icon: const Icon(Icons.arrow_back_ios_new_rounded),
                            color: ConstColors.backgroundColor,
                            onPressed: () {
                              setState(() {
                                focusedDate = DateTime(
                                    focusedDate.year, focusedDate.month - 1);
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: ConstColors.backgroundColor,
                            ),
                          ),
                          child: IconButton(
                            iconSize: 10,
                            icon: const Icon(Icons.arrow_forward_ios_rounded),
                            color: ConstColors.backgroundColor,
                            onPressed: () {
                              setState(() {
                                focusedDate = DateTime(
                                    focusedDate.year, focusedDate.month + 1);
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Calendar(
                selectedDate: selectedDate,
                focusedDate: focusedDate,
                onDateSelected: (date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                height: 50,
                width: 360,
                color: ConstColors.calenderAppBarColor,
                child: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Text(
                        "My TPS Teal Ticks : ",
                        style: TextStyle(
                            color: ConstColors.backgroundColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "0/7",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ConstColors.backgroundColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Complete 7 Days To ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Colors.black, // Adjust color as needed
                              ),
                            ),
                            TextSpan(
                              text: "Earn 50 Bonus Points!",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none,
                                color: Colors.black, // Adjust color as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 10.0,
                      trackShape: const RoundedRectSliderTrackShape(),
                      activeTrackColor: ConstColors.calenderAppBarColor,
                      inactiveTrackColor: ConstColors.grey,
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 14.0,
                        pressedElevation: 8.0,
                      ),
                      thumbColor: ConstColors.calenderAppBarColor,
                      overlayColor: Colors.blue.withOpacity(0.2),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 32.0),
                      tickMarkShape: const RoundSliderTickMarkShape(),
                      activeTickMarkColor: Colors.white,
                      inactiveTickMarkColor: Colors.white,
                      valueIndicatorShape:
                          const PaddleSliderValueIndicatorShape(),
                      valueIndicatorColor: Colors.black,
                      valueIndicatorTextStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    child: Slider(
                      min: 0.0,
                      max: 50.0,
                      value: _value,
                      divisions: 7,
                      label: '${_value.round()}',
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                  const Gap(25),
                  Container(
                    height: 100,
                    width: 360,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0x400194A8), // 25% opacity for #0194A8
                          Color(0x40B19CD9), // 25% opacity for #B19CD9
                        ],
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        top: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Unlock bonus with this simple tip!",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Gap(8),
                          Text(
                            "Take at least 1 consumer survey to start getting bonus points credited in your account",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(100)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Calendar extends StatelessWidget {
  final DateTime selectedDate;
  final DateTime focusedDate;
  final ValueChanged<DateTime> onDateSelected;

  const Calendar({
    super.key,
    required this.selectedDate,
    required this.focusedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    final firstDayOfMonth = DateTime(focusedDate.year, focusedDate.month, 1);
    final daysBeforeFirstDay = firstDayOfMonth.weekday - 1;
    const totalDays = DateTime.daysPerWeek * 6; // 6 weeks to cover any month
    final today = DateTime.now();

    return GridView.builder(
      shrinkWrap: true,
      itemCount: totalDays,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: DateTime.daysPerWeek,
        crossAxisSpacing: 4.0, // Horizontal space between items
        mainAxisSpacing: 4.0, // Vertical space between items
      ),
      itemBuilder: (context, index) {
        final day = index - daysBeforeFirstDay + 1;

        if (index < daysBeforeFirstDay || day > daysInMonth(focusedDate)) {
          return const SizedBox.shrink();
        }

        final date = DateTime(focusedDate.year, focusedDate.month, day);
        final isSelected = date == selectedDate;
        final isToday = date.day == today.day &&
            date.month == today.month &&
            date.year == today.year;
        final isPast = date.isBefore(today);
        final isFuture = date.isAfter(today);

        return GestureDetector(
          onTap: () => onDateSelected(date),
          child: Container(
            width: 80,
            height: 60,
            decoration: BoxDecoration(
              color: isSelected
                  ? Colors.blue
                  : isToday
                      ? ConstColors.backgroundColor
                      : isPast
                          ? ConstColors.isPastDateColor
                          : isFuture
                              ? ConstColors.isFutureDateColor
                              : Colors.transparent,
              border: Border.all(
                color: isToday ? Colors.blue : Colors.black12,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              DateFormat.d().format(date),
              style: TextStyle(
                decoration: TextDecoration.none,
                color: isSelected
                    ? Colors.white
                    : isToday
                        ? Colors.blue
                        : Colors.black,
                fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        );
      },
    );
  }

  int daysInMonth(DateTime date) {
    final nextMonth = DateTime(date.year, date.month + 1, 1);
    return nextMonth.subtract(const Duration(days: 1)).day;
  }
}
