import 'package:duck/reuse_widget/reuse_widget.dart';
import 'package:duck/utils/color_utils.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

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
            gradient: LinearGradient(colors: [
          hexStringToColor("fc6e78"),//00BFBA
            hexStringToColor("db4473"),//#06AEBF
            hexStringToColor("bf376d")//5E61F4
          
          
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(text: "Enter UserName", icon:Icons.person_outline,
                      controller: _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(text: "Enter email id", icon:Icons.person_outline,
                      controller: _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(text: "Enter Password", icon:Icons.person_outline,isPasswordType: true,
                      controller: _passwordTextController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
