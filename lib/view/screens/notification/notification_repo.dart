import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/global/appString.dart';
import 'package:borderaccess/global/global.dart';
import 'package:borderaccess/repo/api_call.dart';
import 'package:borderaccess/utils/internet_connectivity_check.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NOtificationRepo {
  API api = API();

  Future notificationList(String languageCulture, int panelistId) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          Global.notificationList,
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
}
