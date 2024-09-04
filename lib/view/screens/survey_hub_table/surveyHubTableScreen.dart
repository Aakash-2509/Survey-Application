import 'dart:convert';
import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/view/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Surveyhubtablescreen extends StatelessWidget {
  const Surveyhubtablescreen({super.key});

  final String jsonData = '''
  [
    {"surveyId": "23456", "points": "500", "length": "15"},
    {"surveyId": "56645", "points": "500", "length": "10"},
    {"surveyId": "14345", "points": "700", "length": "15"},
    {"surveyId": "14345", "points": "50", "length": "5"},
    {"surveyId": "14345", "points": "300", "length": "5"}
  ]
  ''';
  final String jsonData2 = '''
  [
    {"Fellow Panelist": "Guy Hawkins", "Surveys Completed": "15", "Level": "Level 3", "Rank": "1"},
    {"Fellow Panelist": "Lexie Alexander", "Surveys Completed": "8", "Level": "Level 1", "Rank": "2"},
    {"Fellow Panelist": "Ralph Edwards", "Surveys Completed": "15", "Level": "Level 1", "Rank": "3"}
  ]
  ''';

  @override
  Widget build(BuildContext context) {
    List<dynamic> data = jsonDecode(jsonData);
    List<dynamic> data2 = jsonDecode(jsonData2);

    return Scaffold(
      appBar: const QAppBar(
        title: Text(
          "Survey Hub Table",
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SizedBox(
        height: 500,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Table(
                border: const TableBorder(
                  horizontalInside: BorderSide(color: ConstColors.grey),
                  verticalInside:
                      BorderSide(color: ConstColors.backgroundColor),
                  bottom: BorderSide(color: ConstColors.grey),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
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
                        child: const Text(
                          'Survey ID',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        padding: const EdgeInsets.all(10.0),
                        color: ConstColors.calenderAppBarColor,
                        child: const Text(
                          'Points',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        padding: const EdgeInsets.all(10.0),
                        color: ConstColors.calenderAppBarColor,
                        child: const Text(
                          textAlign: TextAlign.center,
                          'Survey Length (in mins)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
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
                        child: const Text(
                          'Take Survey',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  for (var item in data)
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item['surveyId'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item['points'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item['length'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                                color: ConstColors.surveyTableButtonColor,
                                borderRadius: BorderRadius.circular(8)),
                            // width: 100,
                            child: TextButton(
                              onPressed: () {
                                // Add your onPressed code here!
                              },
                              child: const Text(
                                'Participate',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: ConstColors.backgroundColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            const Gap(40),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Table(
                border: const TableBorder(
                  horizontalInside: BorderSide(color: ConstColors.grey),
                  verticalInside:
                      BorderSide(color: ConstColors.backgroundColor),
                  bottom: BorderSide(color: ConstColors.grey),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
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
                        child: const Text(
                          'Fellow Panelist',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        padding: const EdgeInsets.all(10.0),
                        color: ConstColors.calenderAppBarColor,
                        child: const Text(
                          'Surveys Completed',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        padding: const EdgeInsets.all(10.0),
                        color: ConstColors.calenderAppBarColor,
                        child: const Text(
                          textAlign: TextAlign.center,
                          'Level',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
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
                        child: const Text(
                          'Rank',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  for (var item in data2)
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item['Fellow Panelist'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item['Surveys Completed'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item['Level'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: ConstColors.calenderAppBarColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item['Rank'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            const Gap(40),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 150,
                width: 360,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(
                      24,
                    ),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x400194A8), // 25% opacity for #0194A8
                      Color(0x40B19CD9), // 25% opacity for #B19CD9
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ConstColors.textColorGrey,
                              border: Border.all(
                                color: ConstColors.calenderAppBarColor,
                              ),
                            ),
                            child: const Icon(
                              Icons.person_add_alt_1,
                              size: 20,
                              color: ConstColors.darkGrey,
                            ),
                          ),
                          const Gap(15),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Performance",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                "John Doe",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const SizedBox(
                            height: 45,
                            child: VerticalDivider(
                              color: ConstColors.darkGrey,
                              thickness: 1,
                            ),
                          ),
                          const Gap(10),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Surveys Completed",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                "5",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Gap(15),
                      const Row(
                        children: [
                          Gap(75),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Level",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                "-",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                          Gap(53),
                          SizedBox(
                            height: 45,
                            child: VerticalDivider(
                              color: ConstColors.darkGrey,
                              thickness: 1,
                            ),
                          ),
                          Gap(50),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rank",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                "48",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Gap(50)
          ],
        ),
      ),
    );
  }
}
