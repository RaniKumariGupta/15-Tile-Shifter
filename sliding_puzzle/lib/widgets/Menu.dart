
import 'package:flutter/material.dart';
// import 'Time.dart';
// import 'ResetButton.dart';
import 'Move.dart';

// ignore: must_be_immutable
class Menu extends StatelessWidget {

  Function reset;
  int move;
  int secondsPassed;
  // ignore: prefer_typing_uninitialized_variables
  var size;

  Menu(this.reset, this.move, this.secondsPassed, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: size.height * 0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // ResetButton(reset, "Reset"),
          Move(move),
          // Time(secondsPassed),
        ],
      ),
    );
  }
}