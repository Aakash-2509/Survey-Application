import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/global/appString.dart';
import 'package:borderaccess/global/global.dart';
import 'package:borderaccess/repo/api_call.dart';
import 'package:borderaccess/utils/internet_connectivity_check.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UserProfileRepo {
API api = API();

Future userprofileInfo(
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
          Global.userprofileInfo,
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




Future queanstouserprofile(
        int isProfiler,
   int isUserActive,
   String languageCulture,
   int resendOTP,
   int status,
   int statusId,
   int panelistId,
   int panelistCampaignId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.queanstouserprofile,
          data: {
                'IsProfiler': isProfiler,
          'IsUserActive': isUserActive,
          'LanguageCulture': languageCulture,
          'ResendOTP': resendOTP,
          'Status': status,
          'StatusId': statusId,
          'panelistID': panelistId,
          'panelistcampaignID': panelistCampaignId,
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




Future savePanelistProfiler(
          String languageCulture,
   int panelistCampaignId,
   List<Map<String, dynamic>> panelistProfilingData,
   int statusId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.savePanelistProfiler,
          data: {
                'LanguageCulture': languageCulture,
          'PanelistCampaignId': panelistCampaignId,
          'PanelistProfilingData': panelistProfilingData,
          'StatusID': statusId,
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



}