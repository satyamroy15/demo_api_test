import 'package:flutter/material.dart';

import 'UI/ScreenTwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Test App',
      theme: ThemeData(),
      home: ScreenTwo(),
    );
  }
}
