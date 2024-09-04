import 'dart:ui';

import 'package:borderaccess/view/screens/userprofile/editprofile_screen.dart';
import 'package:borderaccess/view/screens/userprofile/emailpreference_screen.dart';
import 'package:borderaccess/view/screens/userprofile/profiledetails_screen.dart';
import 'package:borderaccess/view/widgets/common_appbar.dart';
import 'package:borderaccess/view/widgets/custom_roundedbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _currentPasswordVisible = false;
  bool _newPasswordVisible = false;
  bool _confirmPasswordVisible = false;
  bool _isWhatsAppSelected = false;
  bool _isDesktopNotificationsSelected = false;
  bool _isMobileSMSSelected = false;
  bool _isMobilePushNotificationsSelected = true;

  final String firstName = "John";
  final String lastName = "Doe";
  final String dateOfBirth = "January 1, 1990";

  void _showChangeProfilePictureDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Color uploadContainerColor = Colors.white;
        Color takePictureContainerColor = Colors.white;
        String? selectedImageName;
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text(
                'Change Profile Picture',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          setState(() {
                            uploadContainerColor = Colors.grey;
                          });
                          final ImagePicker _picker = ImagePicker();
                          final XFile? image = await _picker.pickImage(
                              source: ImageSource.gallery, imageQuality: 20);
                          if (image != null) {
                            setState(() {
                              selectedImageName = image.name;
                              uploadContainerColor = Colors.white;
                              takePictureContainerColor = Colors.white;
                            });
                            // Handle the selected image
                            print("Selected image path: ${image.path}");
                          } else {
                            setState(() {
                              uploadContainerColor = Colors.white;
                            });
                          }
                        },
                        child: Container(
                          height: 70,
                          width: 110,
                          decoration: BoxDecoration(
                            color: uploadContainerColor,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.file_open_rounded),
                              Text(
                                'Upload Picture',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          setState(() {
                            takePictureContainerColor = Colors.grey;
                          });
                          final ImagePicker _picker = ImagePicker();
                          final XFile? image = await _picker.pickImage(
                              source: ImageSource.camera, imageQuality: 20);
                          if (image != null) {
                            setState(() {
                              selectedImageName = image.name;
                              takePictureContainerColor = Colors.white;
                              uploadContainerColor = Colors.white;
                            });
                            // Handle the captured image
                            print("Captured image path: ${image.path}");
                          } else {
                            setState(() {
                              takePictureContainerColor = Colors.white;
                            });
                          }
                        },
                        child: Container(
                          height: 70,
                          width: 110,
                          decoration: BoxDecoration(
                            color: takePictureContainerColor,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.camera_alt),
                              Text(
                                'Take a Picture',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if (selectedImageName != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  selectedImageName!,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                right: -10,
                                top: -10,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedImageName = null;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.cancel,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                            width:
                                8), // Adjust as needed for spacing between text and button
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'Save',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "*The photo should be in GIF, JPG, JPEG, or PNG format and not exceed 'X' KB.",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showChangePasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Change Password',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                  const Text(
                    "The password should contain min 8 to max 12 characters, at least one numeric value, one upper case letter and one special character",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Current Password",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Current Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _currentPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _currentPasswordVisible = !_currentPasswordVisible;
                          });
                        },
                      ),
                    ),
                    obscureText: !_currentPasswordVisible,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Forgot your password?",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "New Password",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'New Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _newPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _newPasswordVisible = !_newPasswordVisible;
                          });
                        },
                      ),
                    ),
                    obscureText: !_newPasswordVisible,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Confirm New Password",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Confirm New Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _confirmPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _confirmPasswordVisible = !_confirmPasswordVisible;
                          });
                        },
                      ),
                    ),
                    obscureText: !_confirmPasswordVisible,
                  ),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement your change password logic here
                      },
                      child: const Text(
                        'Change Password',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showEditPreferencesDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: const Text(
                'Kindly choose the communication modes you prefer to unsubscribe from.',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _isWhatsAppSelected,
                        onChanged: (bool? value) {
                          setState(() {
                            _isWhatsAppSelected = value ?? false;
                          });
                        },
                      ),
                      const Text(
                        'WhatsApp',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isDesktopNotificationsSelected,
                        onChanged: (bool? value) {
                          setState(() {
                            _isDesktopNotificationsSelected = value ?? false;
                          });
                        },
                      ),
                      const Text(
                        'Desktop Notifications',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isMobileSMSSelected,
                        onChanged: (bool? value) {
                          setState(() {
                            _isMobileSMSSelected = value ?? false;
                          });
                        },
                      ),
                      const Text(
                        'Mobile SMS',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isMobilePushNotificationsSelected,
                        onChanged: (bool? value) {
                          setState(() {
                            _isMobilePushNotificationsSelected = value ?? false;
                          });
                        },
                      ),
                      const Text(
                        'Mobile Push Notifications',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle save action
                    Navigator.of(context).pop();
                    _showConfirmationDialog(context);
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text(
            'Your preferences have been saved.',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'OK',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Close',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("My Account"),
        elevation: 0,
        actions: [const Icon(Icons.logout)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // Background Image
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/profilebackgroun.jpg'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                // Profile Content
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Space for the profile header
                      Row(
                        children: [
                          // Left Column: Avatar and Text
                          Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                const CircleAvatar(
                                  radius: 40,
                                  child: Icon(Icons
                                      .person), // Replace with your avatar image path
                                ),
                                const SizedBox(height: 20),
                                GestureDetector(
                                  onTap: () {
                                    _showChangeProfilePictureDialog(context);
                                  },
                                  child: Text(
                                    'Change Profile Picture',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[600],
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          // Right Column: Details
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome, John Doe',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Text(
                                  'January 1, 1990',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(height: 40),
                                Text(
                                  'Lifetime Earned :',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Current Badge:',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListTile(
              tileColor:
                  Colors.grey[200], // Setting background color of ListTile
              title: const Text("My Profile Details"),
              subtitle: GestureDetector(
                onTap: () {
                  _showChangeProfilePictureDialog(context);
                },
                child: Text(
                  'Manage profile settings ',
                  style: TextStyle(
                    fontSize: 10,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              trailing: ElevatedButton.icon(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => EditprofileScreen(
                  //       firstName: firstName,
                  //       lastName: lastName,
                  //       dateOfBirth: dateOfBirth,
                  //     ),
                  //   ),
                  // );
                },
                icon: Icon(
                  Icons.edit_square,
                  size: 20,
                  color: Colors.white,
                ), // Example icon, replace with your icon
                label: const Text(
                  "Edit Profile Details",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.black, // Setting background color of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            ListTile(
              tileColor:
                  Colors.grey[200], // Setting background color of ListTile
              title: const Text("My Security Settings "),

              trailing: ElevatedButton.icon(
                onPressed: () {
                  _showChangePasswordDialog(context);
                },
                // Example icon, replace with your icon
                label: const Text(
                  "Change Passwords",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.black, // Setting background color of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            ListTile(
              tileColor:
                  Colors.grey[200], // Setting background color of ListTile
              title: const Text("My Language Preferences"),
            ),
            ListTile(
              tileColor:
                  Colors.grey[200], // Setting background color of ListTile
              title: const Text("My Communication Preferences"),

              trailing: ElevatedButton.icon(
                onPressed: () {
                  _showEditPreferencesDialog(context);
                },
                icon: Icon(
                  Icons.edit_square,
                  size: 20,
                  color: Colors.white,
                ), // Example icon, replace with your icon
                label: const Text(
                  "Edit Preferences",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.black, // Setting background color of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            ListTile(
              tileColor:
                  Colors.grey[200], // Setting background color of ListTile
              title: const Text("My Email Preferences"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmailPreferenceScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
