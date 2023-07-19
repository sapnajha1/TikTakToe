// import 'package:flutter/material.dart';
//
// void tapped(int index, int filledbox, bool oturn, List<String> display, Function _checkWinner, Function _clearboard, Function setState) {
//   {
//     if (display[index] == '') {
//       setState(() {
//         if (oturn && display[index] == '') {
//           display[index] = 'o';
//           filledbox += 1;
//         } else if (!oturn && display[index] == '') {
//           display[index] = 'x';
//           filledbox += 1;
//         }
//         oturn = !oturn;
//       });
//       _checkWinner();
//     }
//   }
//   // if (oturn && display[index] == '') {
//   //     display[index] = 'o';
//   //     filledbox+=1;
//   //   } else if(!oturn && display[index] == '') {
//   //     display[index] = 'x';
//   //     filledbox+=1;
//   //   }
//   //   oturn = !oturn;
//   //   _checkWinner();
//   // if (display[index] == '') {
//   //   if (oturn) {
//   //     display[index] = 'o';
//   //     filledbox+=1;
//   //   } else {
//   //     display[index] = 'x';
//   //     filledbox+=1;
//   //   }
//   //   oturn = !oturn;
//   //   _checkWinner();
//   //   setState(() {
//   //     filledbox++; // Increment the filledbox when the user taps on a cell
//   //   });
//   // }
// }
//
//
//
// // import 'package:flutter/material.dart';
// //
// // void tapped(int index, int filledbox,bool oturn, List<String> display, Function _checkWinner, Function _clearboard) {
// //
// //   if (oturn && display[index] == '') {
// //       display[index] = 'o';
// //       filledbox+=1;
// //     } else if(!oturn && display[index] == '') {
// //       display[index] = 'x';
// //       filledbox+=1;
// //     }
// //     oturn = !oturn;
// //     _checkWinner();
// //   // if (display[index] == '') {
// //   //   if (oturn) {
// //   //     display[index] = 'o';
// //   //   } else {
// //   //     display[index] = 'x';
// //   //   }
// //   //   oturn = !oturn;
// //   //   _checkWinner();
// //   // }
// // }
// //
// // // import 'package:flutter/cupertino.dart';
// // //
// // // class tapped extends StatefulWidget {
// // //
// // //   @override
// // //   State<tapped> createState() => _tappedState();
// // // }
// // //
// // // class _tappedState extends State<tapped> {
// // //   int filledbox = 0;
// // //
// // //   bool oturn = true;
// // //     // true for o player and false for x player......
// // //   int totalgame = 0;
// // //
// // //   List<String> display = ['', '', '', '', '', '', '', '', ''];
// // //
// // //   List<int> winningLine = [];
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return ;
// // //   }
// // // }
// // // void _tapped(int index) {
// // //   setState(() {
// // //     // display[index] = '0';
// // //     if (oturn && display[index] == '') {
// // //       display[index] = 'o';
// // //       filledbox+=1;
// // //     } else if(!oturn && display[index] == '') {
// // //       display[index] = 'x';
// // //       filledbox+=1;
// // //     }
// // //     oturn = !oturn;
// // //     _checkWinner();
// // //   });
// // // }
