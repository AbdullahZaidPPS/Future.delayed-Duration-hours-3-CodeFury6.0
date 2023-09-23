import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:AppBar(
          leading:IconButton(
            onPressed:() {},
            icon:Icon(Icons.menu),),
            title: Text('Home'),
            actions: [IconButton(onPressed: () {}, icon:Icon(Icons.more_vert))],

        ),
      );
    
  }
}