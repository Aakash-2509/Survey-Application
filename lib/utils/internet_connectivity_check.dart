import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityUtils {
  ///for checking Network
  static Future<bool> isNetworkConnected() async {
    Connectivity connectivity = Connectivity();
    List<ConnectivityResult> connectivityResult =
        await connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.mobile)) {
      return (true && (await isInternetConnected()));
    } else {
      return ((connectivityResult.contains(ConnectivityResult.wifi)) &&
          (await isInternetConnected()));
    }
  }

  ///For checking actual internet
  static Future<bool> isInternetConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com')
          .timeout(const Duration(seconds: 10));
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        // print("InternetAddress.lookup :: connected");
        return true;
      } else {
        return false;
      }
    } on SocketException {
      return false;
    }
  }
}
