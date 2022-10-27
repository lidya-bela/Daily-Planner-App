import 'package:dailyplanner/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 235, 254, 252),
      body: content(),
    );
  }

  Widget content() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 300,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Image.asset("assets/logo2.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromARGB(1000, 0, 104, 119)),
                  )
                ],
              )),
          SizedBox(
            height: 10,
          ),
          inputStyle("Fullname"),
          inputStyle("Email"),
          inputStyle("Password"),
          inputStyle("Confirm Password"),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 44,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(1000, 0, 104, 119),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                "Sign Up",
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
                        Navigator.pushNamed(context, '/login');
                      }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
