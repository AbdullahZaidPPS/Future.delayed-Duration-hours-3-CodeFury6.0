import 'dart:developer';

import 'package:duck/bloc/auth_bloc.dart';
import 'package:duck/models/auth_models.dart';
import 'package:duck/reuse_widget/reuse_widget.dart';
import 'package:duck/shared_prefs/shared_prefs_cache.dart';
import 'package:duck/signup.dart';
import 'package:duck/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:duck/homepage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, UserState>(
        listener: (context, state) {
          state.maybeWhen(
              login: (authToken) {
                log('test');
                if (authToken.authToken != "") {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(), // Replace 'HomePage' with your actual homepage widget
                    ),
                  );
                }
              },
              orElse: () {});
        },
        builder: (context, state) {
          return Container(
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
                padding: EdgeInsets.fromLTRB(
                  20,
                  MediaQuery.of(context).size.height * 0.1,
                  20,
                  0,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Mochiy Pop P One',
                          fontSize: 32.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        // Add your image decoration here if needed.
                      ),
                    ),
                    reusableTextField(
                      text: "Enter UserName",
                      icon: Icons.person_outline,
                      controller: _emailTextController,
                    ),
                    SizedBox(
                      height: 30,
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
                    signInSignUpButton(context, true, () async {
                      final logindets = UserLogin(
                          username: _emailTextController.text,
                          password: _passwordTextController.text);
                      BlocProvider.of<AuthBloc>(context)
                          .add(UserEvent.login(loginDets: logindets));
                    }),
                    signUpOption(),
                  ],
                ),
              ),
            ),
          );
        },
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
