import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/global/global.dart';
import 'package:borderaccess/repo/api_call.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../utils/internet_connectivity_check.dart';

class AuthRepo {
  final API api = API();

  Future login(   String username,String password,String appDeviceID,int appDeviceTypeID,
                      int isProfiler,int isUserActive,String languageCulture,String loginDate,
                      String notificationID,String encryptedPassword,int resendOTP,int status,int tatusID, ) async {
    try {
    if (await ConnectivityUtils.isInternetConnected()) { final response = await api.sendRequest.post(Global.login,
       data: {
        'AppDeviceID' : appDeviceID,
        'AppDeviceTypeID' : appDeviceTypeID,
        'IsProfiler' : isProfiler,
        'IsUserActive' : isUserActive,
        'LanguageCulture' : languageCulture,
        'LoginDate' : loginDate,
        'NotificationID' : notificationID,
        'Password' : password,
        'ResendOTP' : resendOTP,
        'Status' : status,
        'StatusId' : tatusID,
        'Username' : username,

      });

      print('Login successful: ${response.data}');
      
      } else {
           Fluttertoast.showToast(
          msg: 'No internet connection. Please check your connection and try again.',
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

 
Future changePassword(String languageCulture,String newPassword,String oldPassword,int userId,) async {
  try {
    if ( await ConnectivityUtils.isInternetConnected() ){ final response = await api.sendRequest.put(
      Global.reset,
      data: {
        'LanguageCulture': languageCulture,
        'NewPassword': newPassword,
        'OldPassword': oldPassword,
        'UserId': userId,
      },
    );
  
    print('Password change successful: ${response.data}');
    } else {
         Fluttertoast.showToast(
          msg: 'No internet connection. Please check your connection and try again.',
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

 Future forgotPassword(int isProfiler,int isUserActive,String languageCulture,int resendOTP,
                              int status,int statusId,String emailID, ) async {
  try {
   if ( await ConnectivityUtils.isInternetConnected()) { final response = await api.sendRequest.put(
      Global.reset,
      data: {
        'IsProfiler': isProfiler,
        'IsUserActive': isUserActive,
        'LanguageCulture': languageCulture,
        'ResendOTP': resendOTP,
        'Status': status,
        'StatusId': statusId,
        'EmailID': emailID,
      },
    );
    
    print('Forgot password request successful: ${response.data}'); 
    } else {
         Fluttertoast.showToast(
          msg: 'No internet connection. Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG);
    }
  }on DioException catch (e) {
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
