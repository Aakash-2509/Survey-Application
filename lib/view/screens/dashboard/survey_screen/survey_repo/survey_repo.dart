import 'package:borderaccess/global/appString.dart';
import 'package:borderaccess/repo/api_call.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../../../constansts/const_colors.dart';
import '../../../../../global/global.dart';
import '../../../../../utils/internet_connectivity_check.dart';

class DashBoardRepo {
  final API api = API();

  Future getnewsurvey(
    int appDeviceTypeID,
    int isProfiler,
    int isUserActive,
    String languageCulture,
    String notificationID,
    int resendOTP,
    int status,
    int statusId,
    int userId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.getnewsurvey,
          data: {
            'AppDeviceTypeID': appDeviceTypeID,
            'IsProfiler': isProfiler,
            'IsUserActive': isUserActive,
            'LanguageCulture': languageCulture,
            'NotificationID': notificationID,
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
            msg: 'Please check your connection and try again.',
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

  Future getOpinionPollsQuestions(
    int appDeviceTypeID,
    int isProfiler,
    int isUserActive,
    String languageCulture,
    String notificationID,
    int resendOTP,
    int status,
    int statusId,
    int userId,
    int marketId,
    int panelistId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.getOpinionpollQue,
          data: {
            'AppDeviceTypeID': appDeviceTypeID,
            'IsProfiler': isProfiler,
            'IsUserActive': isUserActive,
            'LanguageCulture': languageCulture,
            'NotificationID': notificationID,
            'ResendOTP': resendOTP,
            'Status': status,
            'StatusId': statusId,
            'UserId': userId,
            'MarketId': marketId,
            'PanelistId': panelistId,
          },
        );
        // Handle the response if needed
        return response.data;
      } else {
        Fluttertoast.showToast(
            msg: Appstring.errormsg,
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

  Future participantPopUp(String languageCulture, int panelistId) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.checkSurveyPopup,
          data: {
            'LanguageCulture': languageCulture,
            'PanelistId': panelistId,
          },
        );
        // Handle the response if needed
        return response.data;
      } else {
        Fluttertoast.showToast(
            msg: Appstring.errormsg,
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

  Future addParticipate(String languageCulture, int panelistId) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.participatebutton,
          data: {
            'LanguageCulture': languageCulture,
            'PanelistId': panelistId,
          },
        );
        return response.data;
      } else {
        Fluttertoast.showToast(
            msg: Appstring.errormsg,
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

  Future displaybadge(String languageCulture, int panelistId) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.displaybadge,
          data: {
            'LanguageCulture': languageCulture,
            'PanelistId': panelistId,
          },
        );
        return response.data;
      } else {
        Fluttertoast.showToast(
            msg: Appstring.errormsg,
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

  Future installAppdeviceVersion(
      String languageCulture,
      int panelistId,
      String appVersion,
      String deviceId,
      String deviceName,
      String deviceType,
      String geoLocationCoordinates,
      String loginTime,
      String osVersion,
      String telecomCarrierName) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.installAppdeviceVersion,
          data: {
            'LanguageCulture': languageCulture,
            'PanelistId': panelistId,
            'AppVersion': appVersion,
            'DeviceId': deviceId,
            'DeviceName': deviceName,
            'DeviceType': deviceType,
            'GeoLocationCoordinates': geoLocationCoordinates,
            'LoginTime': loginTime,
            'OSVersion': osVersion,
            'TelecomCarrierName': telecomCarrierName,
          },
        );
        return response.data;
      } else {
        Fluttertoast.showToast(
            msg: Appstring.errormsg,
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

  Future rewardHistory(
    int userId,
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
          Global.rewardHistory,
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
        return response.data;
      } else {
        Fluttertoast.showToast(
          msg: Appstring.errormsg,
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
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

  Future surveyPointsReview(
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
          Global.surveyPointsReview,
          data: {
            "IsProfiler": isProfiler,
            "IsUserActive": isUserActive,
            "LanguageCulture": languageCulture,
            "ResendOTP": resendOTP,
            "Status": status,
            "StatusId": statusId,
            "UserId": userId,
          },
        );
        return response.data;
      } else {
        Fluttertoast.showToast(
          msg: Appstring.errormsg,
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
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

  Future surveyPointsRejects(
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
          Global.surveyPointsRejects,
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
        return response.data;
      } else {
        Fluttertoast.showToast(
          msg: Appstring.errormsg,
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
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

  Future uploadImage(
    String languageCulture,
    int panelistId,
    String? imageString,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.uploadImage,
          data: {
            'LanguageCulture': languageCulture,
            'PanelistId': panelistId,
            'imageString': imageString,
          },
        );
        return response.data;
      } else {
        Fluttertoast.showToast(
          msg: Appstring.errormsg,
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
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

  Future gdprPopup(String languageCulture, int panelistId) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.gdprPopup,
          data: {
            'LanguageCulture': languageCulture,
            'PanelistId': panelistId,
          },
        );
        return response.data;
      } else {
        Fluttertoast.showToast(
          msg: Appstring.errormsg,
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
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

  Future biddingBanner(
    String languageCulture,
    int marketId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.biddingBanner,
          data: {
            'LanguageCulture': languageCulture,
            'MarketID': marketId,
          },
        );
        return response.data;
      } else {
        Fluttertoast.showToast(
            msg: Appstring.errormsg,
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

// Future bidToWin(   String languageCulture,
//    int marketId,
//    int panelistId,) async {
//     try {
//       if (await ConnectivityUtils.isInternetConnected()) {
//         final response = await api.sendRequest.post(
//           Global.bidToWin,
//           data: {
//          'LanguageCulture': languageCulture,
//           'MarketID': marketId,
//           'PanelistID': panelistId,
//           },
//         );
//         return response.data;
//       } else {
//         Fluttertoast.showToast(
//             msg:  Appstring.errormsg,
//             backgroundColor: ConstColors.red,
//             toastLength: Toast.LENGTH_LONG);
//       }
//     } on DioException catch (e) {
//       if (e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
//         Fluttertoast.showToast(
//             msg: e.response!.data['detail'],
//             backgroundColor: ConstColors.primaryColor,
//             toastLength: Toast.LENGTH_LONG);
//         return -1;
//       }
//       return 0;
//     }
//   }
}
