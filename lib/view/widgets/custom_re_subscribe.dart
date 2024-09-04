import 'dart:developer';

import 'package:borderaccess/constansts/const_colors.dart';
import 'package:flutter/material.dart';

class CustomEmailDialog extends StatefulWidget {
  const CustomEmailDialog({super.key});

  @override
  _CustomEmailDialogState createState() => _CustomEmailDialogState();
}

class _CustomEmailDialogState extends State<CustomEmailDialog> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Re-subscribe',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.close,
              size: 18,
            ),
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                'Looks like you have unsubscribed some time ago, but we would love to have you back! Just click on rejoin and we will start fresh in no time.',
                style: TextStyle(decoration: TextDecoration.none),
              ),
              const SizedBox(height: 16),
              const Text(
                "Email",
                style: TextStyle(decoration: TextDecoration.none),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "john.doe@123mail.com",
                  filled: true,
                  fillColor: ConstColors.textColor,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  const emailPattern = r'\w+@\w+\.\w+';
                  if (!RegExp(emailPattern).hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        SizedBox(
          width: 120,
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Handle the email submission
                log('Email: ${_emailController.text}');
                Navigator.of(context).pop();
              }
            },
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      4.0), // Decrease the border radius here
                ),
              ),
              backgroundColor: WidgetStateProperty.all(ConstColors.darkGrey),
            ),
            child: const Text(
              'Rejoin',
              style: TextStyle(
                color: ConstColors.backgroundColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
