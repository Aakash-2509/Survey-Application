import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Pointtocoinconvert extends StatelessWidget {
  const Pointtocoinconvert({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  showCoinModalBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Buy Coins',
                    style: getTextTheme().headlineLarge!.copyWith(
                          fontSize: 20.sp,
                        ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.cancel_outlined,
                      color: ConstColors.grey,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 65,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: ConstColors.primaryColor90,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Convert your points to coins and join the bidding game! Be the highest bidder and win amazing vouchers.',
                  style: getTextTheme().headlineMedium,
                ),
              ),
            ),
            const Gap(10),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 8),
              color: Colors.grey[800],
              child: Center(
                child: Text(
                  'Points Convertor',
                  style: getTextTheme().headlineLarge!.copyWith(
                        fontSize: 20.sp,
                        color: ConstColors.backgroundColor,
                      ),
                ),
              ),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: ConstColors.black,
                image: DecorationImage(
                  opacity: 0.4,
                  alignment: Alignment.bottomCenter,
                  image: const AssetImage(
                    "assets/dailybonuszone/points.png",
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.grey.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'X Points = Y Coins',
                    style: getTextTheme().headlineMedium!.copyWith(
                          color: ConstColors.backgroundColor,
                          fontSize: 20.sp,
                        ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: ConstColors.darkGrey,
                          backgroundColor: ConstColors.backgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                        ),
                        child: Text(
                          'Points',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          size: 24.sp,
                          color: ConstColors.backgroundColor,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: ConstColors.black,
                          backgroundColor: ConstColors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                        ),
                        child: Text(
                          'Coins',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: ConstColors.black,
                          backgroundColor: ConstColors.backgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                        ),
                        child: Text(
                          'Convert & Add to wallet',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
