import 'package:borderaccess/global/appString.dart';
import 'package:borderaccess/repo/api_call.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../../../constansts/const_colors.dart';
import '../../../../../global/global.dart';
import '../../../../../utils/internet_connectivity_check.dart';

class GDPRRepo {
  API api = API();

  Future consentLogSave(
    String browserExtraInfo,
    String browserVersion,
    String consentGiven,
    String consentText1,
    String consentText2,
    String consentVersion,
    String ipAddress,
    String languageCulture,
    int panelistId,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.consentLogSave,
          data: {
            'BrowserExtraInfo': browserExtraInfo,
            'BrowserVersion': browserVersion,
            'ConsentGiven': consentGiven,
            'ConsentText1': consentText1,
            'ConsentText2': consentText2,
            'ConsentVersion': consentVersion,
            'IPAddress': ipAddress,
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
}
