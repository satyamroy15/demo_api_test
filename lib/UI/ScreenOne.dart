// import 'dart:developer';
//
// import 'package:demo_api_test/Network/APIFunctions.dart';
// import 'package:flutter/material.dart';
//
// class ScreenOne extends StatefulWidget {
//   const ScreenOne({Key? key}) : super(key: key);
//
//   @override
//   _ScreenOneState createState() => _ScreenOneState();
// }
//
// class _ScreenOneState extends State<ScreenOne> {
//   APICallCovStats _apiCaller = APICallCovStats();
//   List<String> countryList = [];
//   List<String> countryIndia = [];
//   String test = '';
//
//   void callCovStatsModel() {
//     test = _apiCaller.getCovStatsModelList().toString();
//     log('###### Checking is $test');
//     // Country
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     callCovStatsModel();
//   }
//
//   var h, w;
//
//   @override
//   Widget build(BuildContext context) {
//     h = MediaQuery.of(context).size.height;
//     w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: ListView(
//         children: [
//           Container(
//             height: h * 0.05,
//             width: w * 0.05,
//             child: Center(child: Text('This is test')),
//           )
//         ],
//       ),
//     );
//   }
// }
