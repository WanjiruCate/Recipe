import 'package:flutter/material.dart';
import 'package:onboarding_screens/src/utils/colors.dart';
import 'package:onboarding_screens/src/views/dashboard.dart';
import 'package:onboarding_screens/src/views/splashpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Skills',
      theme: ThemeData(primaryColor: red, accentColor: Colors.white70
          // textTheme: GoogleFonts.mcLarenTextTheme(
          //   Theme.of(context).textTheme,
          // ),
          ),
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        '/Dashboard': (BuildContext context) => new Dashboard(),
        
      },
    );
  }
}
