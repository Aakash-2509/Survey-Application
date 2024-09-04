import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constansts/text_styles.dart';
import 'internet_provider/internet_provider.dart';

class InternetCheck extends ConsumerWidget {
  InternetCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectivityStatus = ref.watch(connectivityProvider);
    return AnimatedContainer(
      curve: Curves.fastOutSlowIn,
      color: Colors.red,
      width: 360.w,
      height: connectivityStatus == ConnectivityStatus.lost ? 30 : 0,
      duration: const Duration(seconds: 3),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedContainer(
            curve: Curves.fastOutSlowIn,
            color: Colors.red,
            padding: const EdgeInsets.all(5),
            duration: const Duration(milliseconds: 300), // Change height slowly
            height: connectivityStatus == ConnectivityStatus.lost ? 30 : 0,
            width: 360.w,
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "No Internet Connection",
                  style: getTextTheme().displayLarge,
                )),
          ),
          AnimatedOpacity(
            opacity: connectivityStatus == ConnectivityStatus.gained ? 1 : 0,
            duration: const Duration(milliseconds: 300),
            child: AnimatedContainer(
              curve: Curves.fastOutSlowIn,
              padding: const EdgeInsets.all(5),
              color: Colors.green,
              duration:
                  const Duration(milliseconds: 300), // Change height slowly
              height: connectivityStatus == ConnectivityStatus.gained ? 30 : 0,
              width: 360.w,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "We Are Back...",
                    style: getTextTheme().displayLarge,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
