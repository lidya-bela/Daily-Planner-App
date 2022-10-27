import 'package:dailyplanner/homepage.dart';
import 'package:dailyplanner/onboarding.dart';
import 'package:dailyplanner/login.dart';
import 'package:dailyplanner/signup.dart';
import 'package:dailyplanner/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => SplashScreen(),
      '/onboarding': (context) => Onboarding(),
      '/login': (context) => Login(),
      '/signup': (context) => Signup(),
      '/homepage': (context) => Homepage(),
    },
  ));
}
