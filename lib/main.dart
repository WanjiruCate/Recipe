import 'package:flutter/material.dart';
import 'package:onboarding_screens/src/views/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Skills',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}
