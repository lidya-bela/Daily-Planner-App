import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OnboardContent(
          image: "assets/gambar1.png",
          title: "Daily Planner",
          description:
              "Need improvement to your time management? Try this daily planner!",
        ),
      ),
    );
  }
}

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String image, title, description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 300,
        ),
        Text(title,
            style: TextStyle(
              fontSize: 28,
            )),
        SizedBox(height: 20),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const Spacer(),
        Container(
          height: 44,
          width: 260,
          decoration: BoxDecoration(
            color: Color.fromARGB(1000, 0, 104, 119),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
            child: Text(
              "Get Started",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Already have an account? ",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              TextSpan(
                  text: "Login",
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(1000, 0, 104, 119)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).pushNamed("/login");
                    }),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
