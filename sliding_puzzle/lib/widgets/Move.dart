import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Move extends StatelessWidget {

  int move;

  Move(this.move);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Text(
        // ignore: unnecessary_brace_in_string_interps
        "Move: ${move}",
        style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 18
        ),
      ),
    );
  }
}