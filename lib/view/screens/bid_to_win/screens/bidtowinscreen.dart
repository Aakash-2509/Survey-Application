import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:borderaccess/view/screens/bid_to_win/body/mybidstabview.dart';
import 'package:borderaccess/view/screens/bid_to_win/body/upcomingtabscreen.dart';
import 'package:borderaccess/view/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../body/closedtabscreen.dart';
import '../body/livetabscreen.dart';

class Bidtowinscreen extends StatefulWidget {
  const Bidtowinscreen({super.key});

  @override
  State<Bidtowinscreen> createState() => _BidtowinscreenState();
}

class _BidtowinscreenState extends State<Bidtowinscreen> {
  @override
  Widget build(BuildContext context) {
    return
        /*
     DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: ConstColors.scaffoldColor,
        appBar: QAppBar(
          title: Text(
            "Back to Fun Zone",
            style: getTextTheme()
                .headlineMedium!
                .copyWith(color: ConstColors.backgroundColor),
          ),
          onTapBackButton: () {
            Navigator.pop(context);
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 180,
                decoration: const BoxDecoration(color: ConstColors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: SizedBox(
                            width: 150.w,
                            height: 80,
                            child: Image.asset(
                              fit: BoxFit.cover,
                              "assets/dailybonuszone/bid.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Bid to Win",
                                style: getTextTheme()
                                    .displayLarge!
                                    .copyWith(fontSize: 20.sp),
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet consectetur. Commodo pretium leo arcu egestas habitant libero. Facilisis enim curabitur amet vitae",
                                style: getTextTheme().displaySmall,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: ConstColors.scaffoldColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      height: 50,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ConstColors.primaryColor,
                          ),
                          height: 3,
                          width: 53,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: ConstColors.backgroundColor,
                height: 50,
                child: TabBar(
                  dividerHeight: 0,
                  // unselectedLabelColor: ConstColors.black,
                  labelStyle: getTextTheme().displayLarge,
                  unselectedLabelStyle: getTextTheme()
                      .headlineLarge!
                      .copyWith(color: ConstColors.shadowColor),
                  labelPadding: const EdgeInsets.all(5),
                  labelColor: ConstColors.backgroundColor,
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(24), // Creates border
                    color: ConstColors.black,
                  ), //Change background color from here
                  tabs: [
                    Tab(
                      child: SizedBox(
                        width: 80.w,
                        child: const Text(
                          textAlign: TextAlign.center,
                          "Live",
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: 80.w,
                        child: const Text(
                          textAlign: TextAlign.center,
                          "Upcoming",
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: 80.w,
                        child: const Text(
                          textAlign: TextAlign.center,
                          "Closed",
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: 80.w,
                        child: const Text(
                          textAlign: TextAlign.center,
                          "My Bids",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 300.h,
                child: const TabBarView(
                  children: [
                    Livetabscreen(),
                    Center(child: Text("Content for Tab 2")),
                    Center(child: Text("Content for Tab 3")),
                    Center(child: Text("Content for Tab 4")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );*/

        DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: QAppBar(
          title: Text(
            "Back to Fun Zone",
            style: getTextTheme()
                .headlineMedium!
                .copyWith(color: ConstColors.backgroundColor),
          ),
          onTapBackButton: () {
            Navigator.pop(context);
          },
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Container(
                      height: 200,
                      decoration: const BoxDecoration(color: ConstColors.black),
                    ),
                    Positioned(
                      left: 12.w,
                      top: 55.h,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 150.w,
                            height: 80,
                            child: Image.asset(
                              'assets/dailybonuszone/bid.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Gap(10.w),
                          SizedBox(
                            width: 180.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Bid to Win",
                                  style: getTextTheme()
                                      .displayLarge!
                                      .copyWith(fontSize: 20.sp),
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet consectetur. Commodo pretium leo arcu egestas habitant libero. Facilisis enim curabitur amet vitae",
                                  style: getTextTheme().displaySmall,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                TabBar(
                  dividerHeight: 0,
                  // unselectedLabelColor: ConstColors.black,
                  labelStyle: getTextTheme().displayLarge,
                  unselectedLabelStyle: getTextTheme()
                      .headlineLarge!
                      .copyWith(color: ConstColors.shadowColor),
                  labelPadding: const EdgeInsets.all(5),
                  labelColor: ConstColors.backgroundColor,
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(24), // Creates border
                    color: ConstColors.black,
                  ), //Change background color from here
                  tabs: [
                    Tab(
                      child: SizedBox(
                        width: 80.w,
                        child: const Text(
                          textAlign: TextAlign.center,
                          "Live",
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: 80.w,
                        child: const Text(
                          textAlign: TextAlign.center,
                          "Upcoming",
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: 80.w,
                        child: const Text(
                          textAlign: TextAlign.center,
                          "Closed",
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: 80.w,
                        child: const Text(
                          textAlign: TextAlign.center,
                          "My Bids",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverFillRemaining(
              child: TabBarView(
                children: [
                  TabBarView(
                    children: [
                      Livetabscreen(),
                      Upcomingtabscreen(),
                      Closedtabscreen(),
                      Mybidtabscreen(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class LongList extends StatelessWidget {
  const LongList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Item $index'),
        );
      },
    );
  }
}
