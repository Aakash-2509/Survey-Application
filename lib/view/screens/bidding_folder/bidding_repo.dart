import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../constansts/const_colors.dart';
import '../../../repo/api_call.dart';
import '../../../utils/internet_connectivity_check.dart';

class BiddingRepo {
  API api = API();
  String SERVERREGISTERURL = "";
  Future postBiddingRequest(
    String languageCulture,
    int marketID,
    int panelistID,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          '<BASE_URL>/Bidding', // Update the endpoint here
          data: {
            'LanguageCulture': languageCulture,
            'MarketID': marketID,
            'PanelistID': panelistID,
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

  Future postBiddingRegisterNow(
    int biddingID,
    String languageCulture,
    int marketID,
    int panelistID,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          '<BASE_URL>/BiddingRegisterNow', // Update the endpoint here
          data: {
            'BiddingID': biddingID,
            'LanguageCulture': languageCulture,
            'MarketID': marketID,
            'PanelistID': panelistID,
          },
        );
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

  Future postBiddingUnRegisterNow(
    int biddingID,
    String languageCulture,
    int marketID,
    int panelistID,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          '<BASE_URL>/BiddingUnRegisterNow', // Update the endpoint here
          data: {
            'BiddingID': biddingID,
            'LanguageCulture': languageCulture,
            'MarketID': marketID,
            'PanelistID': panelistID,
          },
        );
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

  Future postBiddingTermsAndConditions(
    String languageCulture,
    int marketID,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          '<BASE_URL>/BiddingTermsAndConditions', // Update the endpoint here
          data: {
            'LanguageCulture': languageCulture,
            'MarketID': marketID,
          },
        );
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

  Future postBiddingJoinNow(
    int biddingID,
    int marketID,
    int panelistID,
    String languageCulture,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          '<BASE_URL>/BiddingJoinNow', // Update the endpoint here
          data: {
            'BiddingID': biddingID,
            'MarketID': marketID,
            'PanelistID': panelistID,
            'LanguageCulture': languageCulture,
          },
        );
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

  Future postBiddingDetails(
    int biddingID,
    String languageCulture,
    int marketID,
    int panelistID,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          '<BASE_URL>/BiddingDetails', // Update the endpoint here
          data: {
            'BiddingID': biddingID,
            'LanguageCulture': languageCulture,
            'MarketID': marketID,
            'PanelistID': panelistID,
          },
        );
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

  Future postBiddingBidsNow(
    int biddingID,
    int coins,
    String languageCulture,
    int marketID,
    int panelistID,
  ) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          '<BASE_URL>/BiddingBidsNow', // Update the endpoint here
          data: {
            'BiddingID': biddingID,
            'Coins': coins,
            'LanguageCulture': languageCulture,
            'MarketID': marketID,
            'PanelistID': panelistID,
          },
        );
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

  Future<void> fetchBiddingDetails(int biddingID, String languageCulture,
      int marketID, int panelistID) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'BiddingDetails',
          data: {
            'BiddingID': biddingID,
            'LanguageCulture': languageCulture,
            'MarketID': marketID,
            'PanelistID': panelistID,
          },
        );
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
          msg: e.response!.data['detail'],
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> fetchBiddingParticipants(
      int biddingID, String languageCulture) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'BiddingParticipants',
          data: {
            'BiddingID': biddingID,
            'LanguageCulture': languageCulture,
          },
        );
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
          msg: e.response!.data['detail'],
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> fetchBiddingCoins(String languageCulture, int panelistID) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'BiddingCoins',
          data: {
            'LanguageCulture': languageCulture,
            'PanelistID': panelistID,
          },
        );
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
          msg: e.response!.data['detail'],
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> fetchUpcomingBidding(
      String languageCulture, int marketID, int panelistID) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'UpcomingBidding',
          data: {
            'LanguageCulture': languageCulture,
            'MarketID': marketID,
            'PanelistID': panelistID,
          },
        );
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
          msg: e.response!.data['detail'],
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> notifyMeForBidding(
      int biddingID, String languageCulture, int panelistID) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'BiddingNotifyMe',
          data: {
            'BiddingID': biddingID,
            'LanguageCulture': languageCulture,
            'PanelistID': panelistID,
          },
        );
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
          msg: e.response!.data['detail'],
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> fetchClosedBidding(
      String languageCulture, int marketID, int panelistID) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'ClosedBidding',
          data: {
            'LanguageCulture': languageCulture,
            'MarketID': marketID,
            'PanelistID': panelistID,
          },
        );
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
          msg: e.response!.data['detail'],
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> buyCoinsNow(int coins, String languageCulture, int marketID,
      int panelistID, int points) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'BiddingBuyConinsNow',
          data: {
            'Coins': coins,
            'LanguageCulture': languageCulture,
            'MarketID': marketID,
            'PanelistID': panelistID,
            'Points': points,
          },
        );
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
          msg: e.response!.data['detail'],
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> fetchCountryDetails(String languageCulture) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.get(
          'https://cms-api.biz-buzz.com/api/get/countrycode',
          queryParameters: {
            'LanguageCulture': languageCulture,
          },
        );

        // Check if response status code is 200
        if (response.statusCode == 200) {
          // Parse the response body
          Map<String, dynamic> responseData = response.data;

          // Extract relevant data from the response
          int code = responseData['code'];
          String countryCode = responseData['country_code'];
          String countryName = responseData['country_name'];
          String ip = responseData['ip'];
          String message = responseData['message'];
          int status = responseData['status'];

          // Print or use the extracted data
          print('Code: $code');
          print('Country Code: $countryCode');
          print('Country Name: $countryName');
          print('IP: $ip');
          print('Message: $message');
          print('Status: $status');
        } else {
          // Handle non-200 status code if needed
          print('Request failed with status: ${response.statusCode}');
        }
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioError catch (e) {
      // Handle Dio errors, e.g., network errors
      print('Dio error: $e');
      Fluttertoast.showToast(
        msg: 'Error: ${e.message}',
        backgroundColor: ConstColors.primaryColor,
        toastLength: Toast.LENGTH_LONG,
      );
    }
  }

  Future<void> fetchLanguageByCampaignId(int id) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          '$SERVERREGISTERURL/GetLanguagebyCampaignId',
          data: {
            'ID': id,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> validateUserWithAdditionalCheck({
    required String appDeviceId,
    required int campaignId,
    required String emailId,
    required String notificationId,
  }) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          '$SERVERREGISTERURL/ValidUserWithAdditionalCheck',
          data: {
            'AppDeviceId': appDeviceId,
            'CampaignId': campaignId,
            'EmailId': emailId,
            'NotificationID': notificationId,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> sendOTPMail({
    required int isEmailVerification,
    required String languageCulture,
    required int languageId,
    required int otp,
    required String emailId,
  }) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'SendOTPMail',
          data: {
            'IsEmailVerification': isEmailVerification,
            'LanguageCulture': languageCulture,
            'LanguageId': languageId,
            'OTP': otp,
            'emailid': emailId,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> getCampaignXmlByCampaignId(int id, int languageId) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          '$SERVERREGISTERURL/GetCampaignXmlbyCampaignId',
          data: {
            'id': id,
            'languageId': languageId,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> checkMobileExistence(String mobileNumber) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          '$SERVERREGISTERURL/IMobileExists',
          data: {
            'mobileNumber': mobileNumber,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> saveRegistrationEmailLog({
    required int isMobileVerification,
    required String emailId,
  }) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'SaveRegistrationEmailLog',
          data: {
            'IsMobileVerification': isMobileVerification,
            'emailid': emailId,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> requestValidation(String number) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'https://api.checkmobi.com/v1/validation/request',
          data: {
            'number': number,
            'type': 'reverse_cli',
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> validatePin(String requestId, String pin) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'https://api.checkmobi.com/v1/validation/request',
          data: {
            'id': requestId,
            'pin': pin,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> registerPanelistAfterSv(
      int panelistSVId, int panelistSVStatus, String referrerCode) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          '$SERVERREGISTERURL/RegisterPanelistwithCampaignAfterSv',
          data: {
            'PanelistSVId': panelistSVId,
            'PanelistSVStatus': panelistSVStatus,
            'ReferrerCode': referrerCode,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> automaticSocialLogin(
      int socialPluginId, String socialPluginUserId) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'AutomaticSocialLogin',
          data: {
            'SocialplugInId': socialPluginId,
            'SocialpluginUserID': socialPluginUserId,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> setNewPassword(int panelistId, String password,
      String confirmPassword, String languageCulture) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'SetNewPassword',
          data: {
            'PanelistId': panelistId,
            'Password': password,
            'ConfirmPassword': confirmPassword,
            'LanguageCulture': languageCulture,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> validateReferralCode(
      String languageCulture, int referrerCode) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'ReferralCodeValidation',
          data: {
            'LanguageCulture': languageCulture,
            'ReferrerCode': referrerCode,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> saveConsentLog(
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
          'ConsentLogSave',
          data: {
            'ConsentGiven': consentGiven,
            'ConsentText1': consentText1,
            'ConsentText2': consentText2,
            'ConsentVersion': consentVersion,
            'IPAddress': ipAddress,
            'LanguageCulture': languageCulture,
            'PanelistId': panelistId,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> fetchPanlistAvailableSurveys(
      String languageCulture, int userId) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'PanlistAvailableSurveyDatatableWebApp',
          data: {
            'LanguageCulture': languageCulture,
            'Userid': userId,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
        // Process the response data as needed
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioError catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> saveResetPassword(
      String password, int panelistId, String languageCulture) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'ResetPasswordSave',
          data: {
            'Password': password,
            'PanelistId': panelistId,
            'LanguageCulture': languageCulture,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
        // Process the response data as needed
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioError catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> saveResubscribeDetails(
      String panelistId, bool isRejoin, String password) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'ResubscribeDetailsSave',
          data: {
            'PanelistId': panelistId,
            'IsRejoin': isRejoin,
            'Password': password,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
        // Process the response data as needed
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioError catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> trackCarouselClicks(String panelistId) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'CarouselClicksTracking',
          data: {
            'PanelistId': panelistId,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
        // Process the response data as needed
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioError catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  Future<void> fetchReferFriendTerms(
      String panelistId, String languageCulture) async {
    try {
      if (await ConnectivityUtils.isInternetConnected()) {
        final response = await api.sendRequest.post(
          'ReferFriendTermsAndConditions',
          data: {
            'PanelistID': panelistId,
            'LanguageCulture': languageCulture,
          },
        );

        // Handle response based on your application's requirements
        print('Response: ${response.data}');
        // Process the response data as needed
      } else {
        Fluttertoast.showToast(
          msg: 'Please check your connection and try again.',
          backgroundColor: ConstColors.red,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    } on DioError catch (e) {
      if (e.response != null) {
        // Handle Dio errors with HTTP response
        Fluttertoast.showToast(
          msg: e.response!.data['message'] ?? 'Unknown error occurred',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      } else {
        // Handle Dio errors without HTTP response
        Fluttertoast.showToast(
          msg: 'Network error: ${e.message}',
          backgroundColor: ConstColors.primaryColor,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }
}
