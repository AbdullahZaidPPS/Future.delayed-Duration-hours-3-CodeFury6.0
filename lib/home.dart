import 'package:duck/reuse_widget/reuse_widget.dart';
import 'package:duck/signup.dart';
import 'package:duck/utils/color_utils.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  20, MediaQuery.of(context).size.height * 0.3, 20, 0),
              child: Column(
                children: <Widget>[
                  // logoWidget("assets/images/logo.png"),
                  Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(250),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                            image: AssetImage(
                              "images/brain.jpg"
                            )
                        )
                      ),
                    ),
                  
                                 ],
              ),
            ),
          )),
    );
}
}