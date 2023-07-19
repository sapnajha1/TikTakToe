// // import 'packages/flutter/matarial.dart';
//
// import 'package:flutter/material.dart';
//
// class check extends StatelessWidget {
//
//   List<String> display = ['', '', '', '', '', '', '', '', ''];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
//k
// void _checkWinner() {
//
//
//   // checks 1st row
//   var display;
//   if (display[0] == display[1] &&
//       display[0] == display[2] &&
//       display[0] != '') {
//     _showWinDialog(display[0]);
//
//   }
//
//   // checks 2nd row
//   if (display[3] == display[4] &&
//       display[3] == display[5] &&
//       display[3] != '') {
//     _showWinDialog(display[3]);
//   }
//
//   // checks 3rd row
//   if (display[6] == display[7] &&
//       display[6] == display[8] &&
//       display[6] != '') {
//     _showWinDialog(display[6]);
//   }
//
//   // checks 1st column
//   if (display[0] == display[3] &&
//       display[0] == display[6] &&
//       display[0] != '') {
//     _showWinDialog(display[0]);
//   }
//
//   // checks 2nd column
//   if (display[1] == display[4] &&
//       display[1] == display[7] &&
//       display[1] != '') {
//     _showWinDialog(display[1]);
//   }
//
//   // checks 3rd column
//   if (display[2] == display[5] &&
//       display[2] == display[8] &&
//       display[2] != '') {
//     _showWinDialog(display[2]);
//   }
//
//   // checks diagonal
//   if (display[0] == display[4] &&
//       display[0] == display[8] &&
//       display[0] != '') {
//     _showWinDialog(display[0]);
//   }
//
//   // checks 1st row
//   if (display[6] == display[4] &&
//       display[6] == display[2] &&
//       display[6] != '') {
//     _showWinDialog(display[6]);
//   }
//
//   // condition to check Draw
//   else if (filledbox == 9){
//     _showDrawDialog();
//   }
// }
//
// class _showWinDialog {
// }
