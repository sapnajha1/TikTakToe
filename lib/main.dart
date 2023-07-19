import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiktaktoe/screen/homepage.dart';
import 'package:tiktaktoe/screen/splash.dart';

// import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_screen(),
    );
  }
}

class firstpage extends StatefulWidget {

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {


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

              // App logo in Text....................
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                  child: Container(
                    child: Text("TIC TAC TOE",
                        style: GoogleFonts.pressStart2p(color: Colors.white,fontSize: 30),),
                  ),)),
              // ...........................................


              // using AvatarGlow for visual effect.........................
              Expanded(flex: 2,
                  child: Container(
                    child: AvatarGlow(
                      endRadius: 140,
                      duration: Duration(seconds: 2),
                      glowColor: Colors.white,
                      repeat: true,
                      repeatPauseDuration: Duration(seconds: 1),
                      startDelay: Duration(seconds: 1),
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(
                          style: BorderStyle.none,
                        ),
                        shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[800],
                        child: Container(
                          child: Image.asset('images/tik.png',color: Colors.white,fit: BoxFit.scaleDown,),
                        ),
                        radius: 80.0,
                      ),),
                    ),
                  )),
                  // .........................................................................


              // Text.............................
              Expanded(child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  child: Text("@CREATEDBYSAPNA",style: GoogleFonts.pressStart2p(color: Colors.white,fontSize: 20),),
                ),
              )),
              //................................................


              //GestureDetector to handle user taps on the grid view cells and update the game state accordingly..............
              GestureDetector(onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(left: 40,right: 40,bottom: 60),
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.yellow,),
                padding: EdgeInsets.all(30),

                child: Center(
                    child: Text("PLAY GAME",style: GoogleFonts.pressStart2p(color: Colors.black,),)),
              ),),
              )
              //.................................................................................................

            ],
          ),
        ),
      ),
    );
  }
}


