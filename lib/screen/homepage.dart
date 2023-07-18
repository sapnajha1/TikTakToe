import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int filledbox = 0;
  bool oturn = true;
  int totalgame = 0;
  List<String> display = ['', '', '', '', '', '', '', '', ''];
  List<int> winningLine = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "Total Game",
                style: GoogleFonts.pressStart2p(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            totalgame.toString(),
            style: GoogleFonts.pressStart2p(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 50),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.height / 2,
            margin: const EdgeInsets.all(10),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 9,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (BuildContext context, int i) {
                Color cellColor = Colors.grey.shade700;
                if (winningLine.contains(i)) {
                  cellColor = Colors.yellow;
                } else if (display[i] == 'o') {
                  cellColor = Colors.orange;
                } else if (display[i] == 'x') {
                  cellColor = Colors.blue;
                }

                return GestureDetector(
                  onTap: () {
                    _tapped(i);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: cellColor,
                    ),
                    child: Center(
                      child: Text(
                        display[i],
                        style: TextStyle(
                          color: display[i] == 'o' ? Colors.black : Colors.white,
                          fontSize: 70,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 50,),
          GestureDetector(onTap: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => firstpage()),
            );
          },
            child: Padding(
              padding: EdgeInsets.only(left: 70,right: 70,bottom: 60),
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.yellow,),
                padding: EdgeInsets.all(20),

                child: Center(
                    child: Text("Home Screen",style: GoogleFonts.pressStart2p(color: Colors.black,),)),
              ),),
          )
        ],
      ),
    );
  }

  void _tapped(int index) {
    setState(() {
      // display[index] = '0';
      if (oturn && display[index] == '') {
        display[index] = 'o';
        filledbox+=1;
      } else if(!oturn && display[index] == '') {
        display[index] = 'x';
        filledbox+=1;
      }
      oturn = !oturn;
      _checkWinner();
    });
  }

  void _checkWinner() {

    // checks 1st row
    if (display[0] == display[1] &&
        display[0] == display[2] &&
        display[0] != '') {
      _showWinDialog(display[0]);


    }

    // checks 2nd row
    if (display[3] == display[4] &&
        display[3] == display[5] &&
        display[3] != '') {
      _showWinDialog(display[3]);
    }

    // checks 3rd row
    if (display[6] == display[7] &&
        display[6] == display[8] &&
        display[6] != '') {
      _showWinDialog(display[6]);
    }

    // checks 1st column
    if (display[0] == display[3] &&
        display[0] == display[6] &&
        display[0] != '') {
      _showWinDialog(display[0]);
    }

    // checks 2nd column
    if (display[1] == display[4] &&
        display[1] == display[7] &&
        display[1] != '') {
      _showWinDialog(display[1]);
    }

    // checks 3rd column
    if (display[2] == display[5] &&
        display[2] == display[8] &&
        display[2] != '') {
      _showWinDialog(display[2]);
    }

    // checks diagonal
    if (display[0] == display[4] &&
        display[0] == display[8] &&
        display[0] != '') {
      _showWinDialog(display[0]);
    }

    // checks 1st row
    if (display[2] == display[4] &&
        display[2] == display[6] &&
        display[2] != '') {
      _showWinDialog(display[2]);
    }

    else if (filledbox == 9){
      _showDrawDialog();
    }
  }

  void _showDrawDialog(){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Draw!"),
            actions: <Widget>[ElevatedButton(
                onPressed: (){
                  _clearboard();
                  Navigator.of(context).pop();
                },
                child: Text('Play Again'))],
          );
        });
    totalgame+=1;

  }

  void _showWinDialog(String winner){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Winner! is: "+winner),

            actions: <Widget>[ElevatedButton(
              onPressed: (){
                _clearboard();
                Navigator.of(context).pop();
              },
              child: Text('Play Again'),
            )],

          );

        });
    totalgame+=1;
  }

  void _clearboard(){
    setState(() {
      for (int i=0; i<9; i++){
        display[i] = '';
      }
    });
    filledbox = 0;
  }
}
