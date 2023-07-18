import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int filledbox = 0;
  bool oturn = true;
  List<String> display = ['', '', '', '', '', '', '', '', ''];

  var fontblack = GoogleFonts.pressStart2p(
      textStyle: TextStyle(color: Colors.black,letterSpacing: 3));
  var fontwhite = GoogleFonts.pressStart2p(
      textStyle: TextStyle(color: Colors.white,letterSpacing: 3,fontSize: 15));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[600],
        body: Center(
          child: GridView.builder(
              itemCount: 9,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (BuildContext context, int i) {
                return GestureDetector(
                  onTap: () {
                    _tapped(i);
                  },
                  child: Container(
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.green)),
                    child: Center(
                      child: Text(
                        display[i],
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                  ),
                );
              }),
        ));
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
                child: Text('Play Again'))],
          );
        });
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
