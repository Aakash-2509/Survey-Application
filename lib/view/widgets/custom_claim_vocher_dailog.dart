import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';

class CustomClaimVocherDailog extends StatelessWidget {
  const CustomClaimVocherDailog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Stack(
        children: <Widget>[
          // Background image with overlay
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(26)),
            child: Stack(
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), // Adjust opacity here
                    BlendMode.dstATop,
                  ),
                  child: Image.asset(
                    'assets/vocher_bg.jpg', // Replace with your image path
                    fit: BoxFit.cover,
                    width: double.infinity,
                    // height: 250, // Adjust height as needed
                  ),
                ),
                Positioned(
                  left: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "Get Amazon",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        " Gift Voucher Of ₹75",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        "Use Your 500 Points",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        height: 30,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                side:
                                    const BorderSide(color: ConstColors.black),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            backgroundColor:
                                WidgetStateProperty.all(ConstColors.darkGrey),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Claim",
                            style: TextStyle(
                              color: ConstColors.backgroundColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // Overlay content
          Positioned(
            right: 0, // Aligns the container to the right side of the image
            top: 0,
            bottom: 0,
            child: Container(
              width: 120, // Adjust width as needed
              decoration: const BoxDecoration(
                color: ConstColors.backgroundColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(26),
                  bottomRight: Radius.circular(26),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.cancel_outlined,
                      ),
                      color: ConstColors.grey,
                      iconSize: 15,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        "assets/Frame330.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
