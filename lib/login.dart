import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 235, 254, 252),
      body: content(),
    );
  }

  Widget content() {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          height: 250,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Image.asset("assets/logo2.png"),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        inputStyle("Email"),
        inputStyle("Password"),
        SizedBox(
          height: 40,
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
              Navigator.pushNamed(context, '/homepage');
            },
            child: Text(
              "Login",
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
                text: "Don't have an account? ",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              TextSpan(
                  text: "Sign Up",
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(1000, 0, 104, 119)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).pushNamed("/signup");
                    }),
            ],
          ),
        )
      ]),
    );
  }
}

Widget inputStyle(String hintText) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(30, 5, 50, 10),
    child: Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3))
                ]),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: hintText),
            ),
          ),
        ),
      ],
    ),
  );
}
