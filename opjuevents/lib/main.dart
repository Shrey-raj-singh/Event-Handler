
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:opjuevents/Pages/LoginPage.dart';

Future main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      // title: 'Firebase Auth Example',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: LoginPage(),
    );
  }
}
