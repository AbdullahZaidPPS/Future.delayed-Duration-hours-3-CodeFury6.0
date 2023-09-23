import 'package:duck/reuse_widget/reuse_widget.dart';
import 'package:duck/signup.dart';
import 'package:duck/utils/color_utils.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  20, MediaQuery.of(context).size.height * 0.1, 20, 0),
              child: Column(
                children: <Widget>[
                  // logoWidget("assets/images/logo.png"),
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                            image: AssetImage(
                              "images/brain.jpg"
                            )
                        )
                      ),
                    ),
                  SizedBox(
                    height: 30,
                  ),
                  reusableTextField(text: "Enter UserName", icon:Icons.person_outline,
                      controller: _emailTextController),
                  SizedBox(
                    height: 30,
                  ),
                  reusableTextField(text: "Enter Password", icon: Icons.lock_outline, isPasswordType: true,
                    controller :_passwordTextController,),
                  SizedBox(
                    height: 30,
                  ),
                  signInSignUpButton(context, true, () {}),
                  signUpOption()
                ],
              ),
            ),
          )),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
