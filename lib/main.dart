//import 'package:dailyplanner/onboarding.dart';
import 'package:dailyplanner/login.dart';
import 'package:dailyplanner/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => SplashScreen(),
      '/login': (context) => Login(),
      // '/register':(context) => Register()
    },
  ));
}








/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Onboarding(),
    );
  }
}
*/
