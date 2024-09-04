import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomWinnerDailog extends StatelessWidget {
  const CustomWinnerDailog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // title: const Text("data"),
      contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
              color: ConstColors.winnerDailogColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  8,
                ),
                topRight: Radius.circular(
                  8,
                ),
              ),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Congratulations John !",
                        style: TextStyle(
                          color: ConstColors.backgroundColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        "You Won - Amazon",
                        style: TextStyle(
                          color: ConstColors.backgroundColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        "Voucher of ₹500",
                        style: TextStyle(
                          color: ConstColors.backgroundColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8,
                            ),
                          ),
                          color: ConstColors.backgroundColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              height: 7,
                            ),
                            SizedBox(
                              height: 18,
                              child: Image.asset(
                                "assets/Frame330.png",
                              ),
                            ),
                            const SizedBox(
                              height: 18,
                              child: Text(
                                " Gift Voucher Of ₹500",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 300,
            height: 140,
            decoration: const BoxDecoration(
              color: ConstColors.backgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  8,
                ),
                bottomRight: Radius.circular(
                  8,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  const Text(
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                    "Please Note :  If the prize amount is not claimed within 2 days, the voucher details will be sent directly to your email. You will not be able to convert the voucher amount to points.",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              side: const BorderSide(color: ConstColors.black),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          backgroundColor: WidgetStateProperty.all(
                              ConstColors.backgroundColor),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Convert to points",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              side: const BorderSide(color: ConstColors.black),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          backgroundColor:
                              WidgetStateProperty.all(ConstColors.darkGrey),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Claim Now",
                          style: TextStyle(
                            color: ConstColors.backgroundColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
