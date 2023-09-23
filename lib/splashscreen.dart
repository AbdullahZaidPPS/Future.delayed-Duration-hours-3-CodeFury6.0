import 'package:flutter/material.dart';
import 'package:duck/utils/color_utils.dart';

class SplashScreen extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("00BFBA"),
              hexStringToColor("06AEBF"),
              hexStringToColor("5E61F4"),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
              ),
    );
  }
}
