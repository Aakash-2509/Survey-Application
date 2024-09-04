import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/global/appString.dart';
import 'package:borderaccess/global/global.dart';
import 'package:borderaccess/repo/api_call.dart';
import 'package:borderaccess/utils/internet_connectivity_check.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RedeemVoucherRepo {
  API api = API();

  Future getEncryptCall(
    String inputString,
    int isProfiler,
    int isUserActive,
    String languageCulture,
    int resendOTP,
    int status,
    int statusId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.getEncryptCall,
          data: {
            'InputString': inputString,
            'IsProfiler': isProfiler,
            'IsUserActive': isUserActive,
            'LanguageCulture': languageCulture,
            'ResendOTP': resendOTP,
            'Status': status,
            'StatusId': statusId,
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

  Future getEncryptOtp(
    int isProfiler,
    int isUserActive,
    String languageCulture,
    String mobileNumber,
    int resendOTP,
    int status,
    int statusId,
    int userId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.getEncryptOtp,
          data: {
            'IsProfiler': isProfiler,
            'IsUserActive': isUserActive,
            'LanguageCulture': languageCulture,
            'MobileNumber': mobileNumber,
            'ResendOTP': resendOTP,
            'Status': status,
            'StatusId': statusId,
            'userid': userId,
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

  Future savePanelistMobileNumber(
    String id,
    int isProfiler,
    int isUserActive,
    String languageCulture,
    String mobileNumber,
    int resendOTP,
    int status,
    int statusId,
    String pin,
    int userId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.savePanelistMobileNumber,
          data: {
            'Id': id,
            'IsProfiler': isProfiler,
            'IsUserActive': isUserActive,
            'LanguageCulture': languageCulture,
            'MobileNumber': mobileNumber,
            'ResendOTP': resendOTP,
            'Status': status,
            'StatusId': statusId,
            'pin': pin,
            'userid': userId,
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

  Future getMobileVerificationPin(
    String ip,
    int isProfiler,
    int isUserActive,
    String languageCulture,
    String mobileNumber,
    int resendOTP,
    int status,
    int statusId,
    int userId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.getMobileVerificationPin,
          data: {
            'Ip': ip,
            'IsProfiler': isProfiler,
            'IsUserActive': isUserActive,
            'LanguageCulture': languageCulture,
            'MobileNumber': mobileNumber,
            'ResendOTP': resendOTP,
            'Status': status,
            'StatusId': statusId,
            'userid': userId,
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

  Future saveMobilewithOTP(
    int isProfiler,
    int isUserActive,
    String languageCulture,
    int mobileNumber,
    int resendOTP,
    int status,
    int statusId,
    int userId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.saveMobilewithOTP,
          data: {
            'IsProfiler': isProfiler,
            'IsUserActive': isUserActive,
            'LanguageCulture': languageCulture,
            'MobileNumber': mobileNumber,
            'ResendOTP': resendOTP,
            'Status': status,
            'StatusId': statusId,
            'userid': userId,
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

  Future getPanelistRedemptionOption(
      String languageCulture,
   int panelistId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.getPanelistRedemptionOption,
          data: {
            'LanguageCulture': languageCulture,
          'PanelistId': panelistId,
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

 Future generalRewardsNew(
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
          Global.generalRewardsNew,
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




Future generalRedeem(
      int isProfiler,
   int isUserActive,
   String itemName,
   String languageCulture,
   int numberOfPoints,
   int redeemPartnerID,
   int resendOTP,
   int status,
   int statusId,
   int userId,
   int isEdenRed,
     
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.generalRedeem,
          data: {

             'IsProfiler': isProfiler,
          'IsUserActive': isUserActive,
          'ItemName': itemName,
          'LanguageCulture': languageCulture,
          'NumberofPoints': numberOfPoints,
          'RedeeempartnerID': redeemPartnerID,
          'ResendOTP': resendOTP,
          'Status': status,
          'StatusId': statusId,
          'UserId': userId,
          'isEdenRed': isEdenRed,
           
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
