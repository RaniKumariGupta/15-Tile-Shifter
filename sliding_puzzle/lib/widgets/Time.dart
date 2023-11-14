import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Time extends StatelessWidget {
  int secondsPassed;

  Time(this.secondsPassed);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Text(
        "Time: ${secondsPassed}",
        style: TextStyle(
          fontSize: 18,
          decoration: TextDecoration.none,
          color: const Color.fromARGB(255, 213, 53, 53),
        ),
      ),
    );
  }
}
