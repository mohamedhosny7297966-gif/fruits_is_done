

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
     child: Text("Home View",
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
        ),),),
    );
  }
}
