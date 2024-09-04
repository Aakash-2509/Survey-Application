

// import 'package:borderaccess/constansts/const_colors.dart';
// import 'package:borderaccess/view/widgets/common_appbar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class HelpCategoriesScreen extends StatefulWidget {
//   const HelpCategoriesScreen({super.key});

//   @override
//   State<HelpCategoriesScreen> createState() => _HelpCategoriesScreenState();
// }

// class _HelpCategoriesScreenState extends State<HelpCategoriesScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const QAppBar(title: Text("Categories")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Center(
//               child: Text(
//                 "How Can We Help You ?",
//                 style: TextStyle(decoration: TextDecoration.none),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const Text(
//                   "Select a Category",
//                   style: TextStyle(decoration: TextDecoration.none),
//                 ),
//                 const SizedBox(width: 5),
//                 Expanded(
//                   child: Container(
//                     height: 1,
//                     color: Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: ConstColors.helpBackground,
//               ),
//               padding: const EdgeInsets.all(10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: ConstColors.helpTextBack,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.2),
//                           spreadRadius: 2,
//                           blurRadius: 5,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     padding: const EdgeInsets.all(10),
//                     child: const Center(
//                       child: Text(
//                         "How can I increase my Points?",
//                         style: TextStyle(
//                           decoration: TextDecoration.none,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   const Text(
//                     "The Panel Station gives you different ways to increase your earnings.",
//                     style: TextStyle(decoration: TextDecoration.none),
//                   ),
//                   const SizedBox(height: 10),
//                   const Text(
//                     "1. Update your profile regularly to get more surveys.",
//                     style: TextStyle(decoration: TextDecoration.none),
//                   ),
//                   const Text(
//                     "2. The exciting contests on social media carry additional points. Participate & Enjoy",
//                     style: TextStyle(decoration: TextDecoration.none),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Additional sections
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               padding: const EdgeInsets.all(10),
//               child: const Text(
//                 "Do my Points expire after sometime?",
//                 style: TextStyle(decoration: TextDecoration.none),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               padding: const EdgeInsets.all(10),
//               child: const Text(
//                 "How can I check my points?",
//                 style: TextStyle(decoration: TextDecoration.none),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               padding: const EdgeInsets.all(10),
//               child: const Text(
//                 "Why were my Points deducted?",
//                 style: TextStyle(decoration: TextDecoration.none),
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Divider
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: 1,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 10),
//                   child: Text(
//                     "or",
//                     style: TextStyle(
//                       decoration: TextDecoration.none,
//                       color: Colors.grey,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     height: 1,
//                     color: Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             // Additional sections continued
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 CupertinoButton(
//                   color: ConstColors.helpButtoncolor,
//                   onPressed: () {},
//                   padding: EdgeInsets.zero,
//                   borderRadius: BorderRadius.circular(100),
//                   child: const Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 20,
//                         backgroundColor: ConstColors.black,
//                         child: Icon(
//                           Icons.check,
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 2,
//                       ),
//                       Text(
//                         "Write to us",
//                         style: TextStyle(
//                           decoration: TextDecoration.none,
//                           fontSize: 14,
//                           color: Colors.grey,
//                           fontWeight: FontWeight.normal,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 CupertinoButton(
//                   color: ConstColors.helpButtoncolor,
//                   onPressed: () {},
//                   padding: EdgeInsets.zero,
//                   borderRadius: BorderRadius.circular(100),
//                   child: const Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 20,
//                         backgroundColor: ConstColors.black,
//                         child: Icon(
//                           Icons.check,
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 2,
//                       ),
//                       Text(
//                         "My Query Tracker",
//                         style: TextStyle(
//                           decoration: TextDecoration.none,
//                           fontSize: 14,
//                           color: Colors.grey,
//                           fontWeight: FontWeight.normal,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
