import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tiktaktoe/main.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder:(context) => firstpage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(200,200,200,100),
        child:Center(child: Image.asset('images/tik.png',),
          // child: Text("MXPLAYER",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        )
      ),
    );
  }

}
