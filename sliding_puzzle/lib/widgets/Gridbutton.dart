// import 'package:flutter/material.dart';

// class GridButton extends StatelessWidget {
//   Function click;
//   String text;

//   GridButton(this.text, this.click);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       child: Text(
//         text,
//         style: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       primary: Colors.white,
//       shape: RoundedRectangleBorder(
//         borderRadius: new BorderRadius.circular(8.0),
//       ),
//       onPressed: click,
//     );
//   }
// }

import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final VoidCallback click;
  final String text;

  GridButton(this.text, this.click);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       child: Text(
//         text,
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//       ),
//       onPressed: click,
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(
          color: text == ''
              ? const Color.fromARGB(0, 255, 255, 255)
              : Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor:
            text == '' ? const Color.fromARGB(0, 255, 255, 255) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onPressed: click,
    );
  }
}
