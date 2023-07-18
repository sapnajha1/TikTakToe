import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstpage(),
    );
  }
}

class firstpage extends StatefulWidget {

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {

  var fontblack = GoogleFonts.pressStart2p(
      textStyle: TextStyle(color: Colors.black,letterSpacing: 3));
  var fontwhite = GoogleFonts.pressStart2p(
      textStyle: TextStyle(color: Colors.white,letterSpacing: 3,fontSize: 15));


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 120.0),
                  child: Container(
                    child: Text("TIC TAK TOE",
                        style: GoogleFonts.pressStart2p(color: Colors.white,fontSize: 30),),
                  ),)),
              
              // Expanded(child: child)
            ],
          ),
        ),
      ),
    );
  }
}


