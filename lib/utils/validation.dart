// validation.dart

import 'package:borderaccess/global/appString.dart';

class Validators {
   String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return Appstring.namevalidation;
    }
    return null;
  }

  String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return Appstring.lastnamevalidation;
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return Appstring.emailrequired;
    }
    const emailPattern = r'^[^@]+@[^@]+\.[^@]+';
    if (!RegExp(emailPattern).hasMatch(value)) {
      return Appstring.emailvalidation;
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return Appstring.passwordreuired;
    }
    if (value.length < 6) {
      return Appstring.passwordvalidation;
    }
    return null;
  }



   String? validatePhoneNumber(String? value) {
    if (value == 10 || value!.isNotEmpty) {
      return Appstring.phonevalidation;
    }
    // Add phone number format validation logic here if needed
    return Appstring.phonevalidation;
  }

   String? validateDateOfBirth(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your date of birth';
    }

    // Basic date format validation (YYYY-MM-DD)
    final RegExp dateRegex = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    if (!dateRegex.hasMatch(value)) {
      return Appstring.DOBvalidation;
    }

    DateTime dob;
    try {
      dob = DateTime.parse(value);
    } catch (e) {
      return Appstring.DOBvalidation;
    }

    final DateTime now = DateTime.now();
    final int age = now.year - dob.year;
    if (age < 18) {
      return Appstring.below18;
    }

    return null; // Return null if validation passes
  }

   String? validatePinCode(String? value) {
    if (value == null || value.isEmpty) {
      return Appstring.pincodevalidation;
    }

    // Basic pin code format validation (6 digits)
    final RegExp pinCodeRegex = RegExp(r'^\d{6}$');
    if (!pinCodeRegex.hasMatch(value)) {
      return Appstring.pincoderequired;
    }

    return null; // Return null if validation passes
  }
}



