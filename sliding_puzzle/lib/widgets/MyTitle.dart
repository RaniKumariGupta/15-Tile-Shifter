
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTitle extends StatelessWidget {
  var size;

  MyTitle(this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.10,
      padding: const EdgeInsets.all(5.0),
      child: Text(
        "15-Tile Shifter",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: size.height * 0.050,
            color: Colors.white,
            decoration: TextDecoration.none),
      ),
    );
  }
}