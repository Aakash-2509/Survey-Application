import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/global/appString.dart';
import 'package:borderaccess/global/global.dart';
import 'package:borderaccess/repo/api_call.dart';
import 'package:borderaccess/utils/internet_connectivity_check.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyRewardRepo {
  API api = API();

  Future getSweepstakes(
    int isProfiler,
    int isUserActive,
    String languageCulture,
    int resendOTP,
    int status,
    int statusId,
    int userId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.getSweepstakes,
          data: {
            'IsProfiler': isProfiler,
            'IsUserActive': isUserActive,
            'LanguageCulture': languageCulture,
            'ResendOTP': resendOTP,
            'Status': status,
            'StatusId': statusId,
            'UserId': userId,
          },
        );
        // Handle the response if needed
        return response.data;
      } else {
        Fluttertoast.showToast(
            msg:  Appstring.errormsg,
            backgroundColor: ConstColors.red,
            toastLength: Toast.LENGTH_LONG);
      }
    } on DioException catch (e) {
      if (e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
            msg: e.response!.data['detail'],
            backgroundColor: ConstColors.primaryColor,
            toastLength: Toast.LENGTH_LONG);
        return -1;
      }
      return 0;
    }
  }

  Future buyTicketSweepstakes(
    int drawMarketGroupID,
    int isProfiler,
    int isUserActive,
    String languageCulture,
    int numberOfTickets,
    int resendOTP,
    int status,
    int statusId,
    int userId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.buyTicketSweepstakes,
          data: {
            'DrawMarketGroupID': drawMarketGroupID,
            'IsProfiler': isProfiler,
            'IsUserActive': isUserActive,
            'LanguageCulture': languageCulture,
            'NumberofTickets': numberOfTickets,
            'ResendOTP': resendOTP,
            'Status': status,
            'StatusId': statusId,
            'UserId': userId,
          },
        );
        // Handle the response if needed
        return response.data;
      } else {
        Fluttertoast.showToast(
            msg:  Appstring.errormsg,
            backgroundColor: ConstColors.red,
            toastLength: Toast.LENGTH_LONG);
      }
    } on DioException catch (e) {
      if (e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
            msg: e.response!.data['detail'],
            backgroundColor: ConstColors.primaryColor,
            toastLength: Toast.LENGTH_LONG);
        return 0;
      }
      return 0;
    }
  }
}
