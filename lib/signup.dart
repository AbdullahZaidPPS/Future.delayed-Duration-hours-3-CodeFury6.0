import 'package:duck/reuse_widget/reuse_widget.dart';
import 'package:duck/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:duck/homepage.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("fc6e78"),
              hexStringToColor("db4473"),
              hexStringToColor("bf376d"),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top:80, left:20,right: 20),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                reusableTextField(
                  text: "Enter UserName",
                  icon: Icons.person_outline,
                  controller: _userNameTextController,
                ),
                SizedBox(
                  height: 20,
                ),
                reusableTextField(
                  text: "Enter email id",
                  icon: Icons.email_outlined,
                  controller: _emailTextController,
                ),
                SizedBox(
                  height: 20,
                ),
                reusableTextField(
                  text: "Enter Password",
                  icon: Icons.lock_outline,
                  isPasswordType: true,
                  controller: _passwordTextController,
                ),
                SizedBox(
                  height: 30,
                ),
                signInSignUpButton(context, true, () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(), // Replace 'HomePage' with your actual homepage widget
                    ),
                  );
                }),
                signUpOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()),
            );
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
