import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                SvgPicture.asset(
                  "images/gambar1.svg",
                  height: 300,
                ),
                Text("Daily Planner",
                    style: TextStyle(
                      fontSize: 28,
                    )),
                SizedBox(height: 20),
                Text(
                  "Need improvement to your time management? Try this daily planner!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
