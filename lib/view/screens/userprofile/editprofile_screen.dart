

// import 'package:borderaccess/utils/validation.dart';
// import 'package:flutter/material.dart';

// class EditprofileScreen extends StatefulWidget {
//   final String firstName;
//   final String lastName;
//   final String dateOfBirth;

//   const EditprofileScreen({
//     Key? key,
//     required this.firstName,
//     required this.lastName,
//     required this.dateOfBirth,
//   }) : super(key: key);

//   @override
//   State<EditprofileScreen> createState() => _EditprofileScreenState();
// }

// class _EditprofileScreenState extends State<EditprofileScreen> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // New form key
//   final TextEditingController _firstNameController = TextEditingController();
//   final TextEditingController _lastNameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _dobController = TextEditingController();
//   final TextEditingController _countryController = TextEditingController();
//   final TextEditingController _stateController = TextEditingController();
//   final TextEditingController _cityController = TextEditingController();
//   final TextEditingController _pinCodeController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _firstNameController.text = widget.firstName;
//     _lastNameController.text = widget.lastName;
//     _dobController.text = widget.dateOfBirth;
//   }

//   @override
//   void dispose() {
//     _firstNameController.dispose();
//     _lastNameController.dispose();
//     _emailController.dispose();
//     _phoneController.dispose();
//     _dobController.dispose();
//     _countryController.dispose();
//     _stateController.dispose();
//     _cityController.dispose();
//     _pinCodeController.dispose();
//     super.dispose();
//   }

//   InputDecoration _buildInputDecoration(String labelText) {
//     return InputDecoration(
//       hintText: labelText,
//       hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
//       fillColor: Colors.grey[200],
//       filled: true,
//       border: const OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(5.0)),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Edit Profile Details"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey, // Attach form key here
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "First Name",
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.normal,
//                               decoration: TextDecoration.none,
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           TextFormField(
//                             controller: _firstNameController,
//                             decoration: _buildInputDecoration('First Name'),
//                             validator: Validators.validateFirstName,
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     Expanded(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "Last Name",
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.normal,
//                               decoration: TextDecoration.none,
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           TextFormField(
//                             controller: _lastNameController,
//                             decoration: _buildInputDecoration('Last Name'),
//                             validator: Validators.validateLastName,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   "Email ID",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.normal,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextFormField(
//                   controller: _emailController,
//                   decoration: _buildInputDecoration('Email ID'),
//                   validator: Validators.validateEmail,
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   "Phone Number",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.normal,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextFormField(
//                   controller: _phoneController,
//                   decoration: _buildInputDecoration('Phone Number'),
//                   validator: Validators.validatePhoneNumber,
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   "Date of Birth",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.normal,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextFormField(
//                   controller: _dobController,
//                   decoration: _buildInputDecoration('Date of Birth'),
//                   validator: Validators.validateDateOfBirth,
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   "Country",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.normal,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextFormField(
//                   controller: _countryController,
//                   decoration: _buildInputDecoration('Country'),
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   "State",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.normal,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextFormField(
//                   controller: _stateController,
//                   decoration: _buildInputDecoration('State'),
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   "City",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.normal,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextFormField(
//                   controller: _cityController,
//                   decoration: _buildInputDecoration('City'),
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   "Pin Code",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.normal,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextFormField(
//                   controller: _pinCodeController,
//                   decoration: _buildInputDecoration('Pin Code'),
//                   validator: Validators.validatePinCode,
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         // Implement the cancel functionality here
//                       },
//                       style: ElevatedButton.styleFrom(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5),
//                           side: BorderSide(color: Colors.black),
//                         ),
//                       ),
//                       child: Text(
//                         "Cancel",
//                         style: TextStyle(color: Colors.black),
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         if (_formKey.currentState!.validate()) {
//                           // Save functionality here when form is valid
//                           // You can access all form fields using their controllers
//                         }
//                       },
//                       style: ElevatedButton.styleFrom(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         backgroundColor: Colors.black,
//                       ),
//                       child: const Text(
//                         "Save Changes",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
