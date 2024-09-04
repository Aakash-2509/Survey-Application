import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/global/appString.dart';
import 'package:borderaccess/global/global.dart';
import 'package:borderaccess/repo/api_call.dart';
import 'package:borderaccess/utils/internet_connectivity_check.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SettingRepo {
  API api = API();

  Future languageCultureSave(
    String languageCulture,
    int panelistId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.languageCultureSave,
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

  Future getPanelistCommunicationPreference(
    String languageCulture,
    int panelistId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.getPanelistCommunicationPreference,
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

  Future savePanelistPreference(
    String commPrefID,
    String languageCulture,
    int panelistId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.savePanelistPreference,
          data: {
            'CommPrefID': commPrefID,
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

  Future staticPageContent(
    String contentType,
    String languageCulture,
    int marketId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.staticPageContent,
          data: {
            'ContentType': contentType,
            'LanguageCulture': languageCulture,
            'MarketId': marketId,
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

  Future privacyPolicyContent(
    String contentType,
    String languageCulture,
    int marketId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.staticPageContent,
          data: {
            'ContentType': contentType,
            'LanguageCulture': languageCulture,
            'MarketId': marketId,
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

  Future getUnsubscribeReason() async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.getUnsubscribeReason,
          data: {},
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

  Future unSubscribeSave(
       String languageCulture,
   int panelistId,
   String reasonForOther,
   String reasonIds,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.unSubscribeSave,
          data: {
             'LanguageCulture': languageCulture,
          'PanelistId': panelistId,
          'ReasonForOther': reasonForOther,
          'ReasonIds': reasonIds,
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

 Future unSubscribeDeleteSaveWeb(
       String languageCulture,
   int panelistId,
   String reasonForOther,
   String reasonIds,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.unSubscribeDeleteSaveWeb,
          data: {
             'LanguageCulture': languageCulture,
          'PanelistId': panelistId,
          'ReasonForOther': reasonForOther,
          'ReasonIds': reasonIds,
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


   Future saveReSubscribe(
       String emailId,
   String languageCulture,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.saveReSubscribe,
          data: {
             'EmailId': emailId,
          'LanguageCulture': languageCulture,
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



   Future panelistLogOut(
       String languageCulture,
   String logOutDate,
   int panelistId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.panelistLogOut,
          data: {
               'LanguageCulture': languageCulture,
          'LogOutDate': logOutDate,
          'PanelistId': panelistId,
          }

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
