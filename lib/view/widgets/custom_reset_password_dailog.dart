import 'package:flutter/material.dart';
import 'package:borderaccess/constansts/const_colors.dart';

class CustomResetPasswordDialog extends StatefulWidget {
  const CustomResetPasswordDialog({super.key});

  @override
  _CustomResetPasswordDialogState createState() =>
      _CustomResetPasswordDialogState();
}

class _CustomResetPasswordDialogState extends State<CustomResetPasswordDialog> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _isPasswordValid = false;
  bool _arePasswordsMatching = true;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _validatePassword(String value) {
    // Password validation logic
    bool hasUppercase = value.contains(RegExp(r'[A-Z]'));
    bool hasDigits = value.contains(RegExp(r'[0-9]'));
    bool hasSpecialCharacters =
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    bool hasLength = value.length >= 8;

    setState(() {
      _isPasswordValid =
          hasUppercase && hasDigits && hasSpecialCharacters && hasLength;
    });
  }

  void _validateConfirmPassword(String value) {
    setState(() {
      _arePasswordsMatching = value == _passwordController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "New Password",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
            ),
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "The password should contain min 8 characters, at least one numeric value, one upper case letter and one special character",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "New Password",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
              onChanged: _validatePassword,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Confirm Password",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _confirmPasswordController,
              obscureText: !_isConfirmPasswordVisible,
              onChanged: _validateConfirmPassword,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _isConfirmPasswordVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    setState(() {
                      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                    });
                  },
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            if (!_arePasswordsMatching)
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Passwords do not match",
                  style: TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                side: const BorderSide(color: ConstColors.black),
                borderRadius: BorderRadius.circular(
                  8.0,
                ), // Decrease the border radius here
              ),
            ),
            backgroundColor:
                WidgetStateProperty.all(ConstColors.backgroundColor),
          ),
          onPressed: () {
            _passwordController.clear();
            _confirmPasswordController.clear();
          },
          child: const Text(
            "Reset",
            style: TextStyle(
              color: ConstColors.black,
            ),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    8.0), // Decrease the border radius here
              ),
            ),
            backgroundColor: WidgetStateProperty.all(ConstColors.darkGrey),
          ),
          onPressed: () {
            if (_passwordController.text.isEmpty) {
              // Show a Snackbar if password is not entered
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Please enter a password'),
                  duration:
                      Duration(seconds: 2), // Adjust the duration as needed
                ),
              );
            } else if (_isPasswordValid && _arePasswordsMatching) {
              // Handle password submission logic here
              _passwordController.clear();
              _confirmPasswordController.clear();
              Navigator.of(context).pop();
            } else {
              _validatePassword(_passwordController.text);
            }
          },
          child: const Text(
            "Submit",
            style: TextStyle(
              color: ConstColors.backgroundColor,
            ),
          ),
        )
      ],
    );
  }
}
