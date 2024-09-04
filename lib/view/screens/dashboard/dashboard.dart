import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/view/screens/dailybonus/screen/dailybonuszonescreen.dart';
import 'package:borderaccess/view/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'survey_screen/body/bottomnav_indicator.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Dailybonuszonescreen(),
    Text('Surveys'),
    Text('Rewards'),
    Text('Whats new'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.scaffoldColor,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: ConstColors.backgroundColor,
        height: 70,
        child: Column(
          children: [
            TabIndicators(
              activeIdx: _selectedIndex,
              activeColor: ConstColors.primaryColor,
              numTabs: 5,
              padding: 15,
              height: 4,
            ),
            BottomNavigationBar(
              backgroundColor: ConstColors.backgroundColor,
              selectedItemColor: ConstColors.primaryColor,
              unselectedItemColor: ConstColors.unselectedIconColor,

              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: GoogleFonts.arsenal(
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
              ),
              unselectedLabelStyle: GoogleFonts.arsenal(
                  fontWeight: FontWeight.w400, decoration: TextDecoration.none),
              currentIndex: _selectedIndex,

              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      _selectedIndex == 0
                          ? 'assets/bottomnav/home1.png'
                          : 'assets/bottomnav/home.png',
                      width: 25,
                      height: 25,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      _selectedIndex == 1
                          ? 'assets/bottomnav/daily1.png'
                          : 'assets/bottomnav/daily.png',
                      width: 25,
                      height: 25,
                    ),
                    label: "Daily Bonus"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      _selectedIndex == 2
                          ? 'assets/bottomnav/survey1.png'
                          : 'assets/bottomnav/survey.png',
                      width: 25,
                      height: 25,
                    ),
                    label: "Surveys"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      _selectedIndex == 3
                          ? 'assets/bottomnav/reward1.png'
                          : 'assets/bottomnav/reward.png',
                      width: 25,
                      height: 25,
                    ),
                    label: "Rewards"),
                BottomNavigationBarItem(
                    icon: Badge(
                      smallSize: 10,
                      child: Image.asset(
                        _selectedIndex == 4
                            ? 'assets/bottomnav/new1.png'
                            : 'assets/bottomnav/new.png',
                        width: 25,
                        height: 25,
                      ),
                    ),
                    label: "What’s New"),
              ],
              showUnselectedLabels: true,
              showSelectedLabels: true,
              elevation: 0,
              // unselectedItemColor: widget.unselcted_icon_color,
              // selectedIconTheme: IconThemeData(color: widget.selcted_icon_color),
              // selectedLabelStyle: GoogleFonts.lato(
              //   color: Colors.red,
              // ),
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child:
                  Lottie.asset('assets/loader.json', width: 67, height: 67))),
    );
  }
}
