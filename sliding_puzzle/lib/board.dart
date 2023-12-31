/// ORIGINAL

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'widgets/Menu.dart';
// import 'widgets/MyTitle.dart';
// import 'widgets/Grid.dart';

// class Board extends StatefulWidget {
//   @override
//   _BoardState createState() => _BoardState();
// }

// class _BoardState extends State<Board> {
//   // var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
//   var numbers = [
//     'A',
//     'B',
//     'C',
//     'D',
//     'E',
//     'F',
//     'G',
//     'H',
//     'I',
//     'J',
//     'K',
//     'L',
//     'M',
//     'N',
//     'O',
//     ''
//   ];

//   int move = 0;
//   // int lastTileIndex = 14;

//   static const duration = const Duration(seconds: 1);
//   int secondsPassed = 0;
//   bool isActive = false;
//   Timer? timer;

//   @override
//   void initState() {
//     super.initState();
//     numbers.shuffle();
//     if (timer == null) {
//       timer = Timer.periodic(duration, (Timer t) {
//         startTime();
//       });
//     }
//   }

//   @override
//   void dispose() {
//     timer?.cancel(); // Cancel the timer in the dispose method
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     if (timer == null) {
//       timer = Timer.periodic(duration, (Timer t) {
//         startTime();
//       });
//     }

//     return SafeArea(
//       child: Container(
//         height: size.height,
//         // color: Colors.blue,
//         color: numbers == ''
//             ? Colors.transparent
//             : const Color.fromARGB(255, 0, 0, 0),

//         child: Column(
//           children: <Widget>[
//             MyTitle(size),
//             Grid(numbers, size, clickGrid),
//             Menu(reset, move, secondsPassed, size),
//           ],
//         ),
//       ),
//     );
//   }

//   // void clickGrid(index) {
//   //   if (secondsPassed == 0) {
//   //     isActive = true;
//   //   }
//   //   if (index - 1 >= 0 && numbers[index - 1] == 0 && index % 4 != 0 ||
//   //       index + 1 < 16 && numbers[index + 1] == 0 && (index + 1) % 4 != 0 ||
//   //       (index - 4 >= 0 && numbers[index - 4] == 0) ||
//   //       (index + 4 < 16 && numbers[index + 4] == 0)) {
//   //     setState(() {
//   //       move++;
//   //       numbers[numbers.indexOf(0 as String)] = numbers[index];
//   //       numbers[index] = 0 as String;
//   //     });
//   //   }
//   //   checkWin();
//   // }

// //   void clickGrid(index) {
// //   if (secondsPassed == 0) {
// //     isActive = true;
// //   }
// //   if (index - 1 >= 0 &&
// //       numbers[index - 1] == '' &&
// //       index % 4 != 0 ||
// //       index + 1 < numbers.length &&
// //           numbers[index + 1] == '' &&
// //           (index + 1) % 4 != 0 ||
// //       (index - 4 >= 0 && numbers[index - 4] == '') ||
// //       (index + 4 < numbers.length && numbers[index + 4] == '')) {
// //     setState(() {
// //       move++;
// //       numbers[numbers.indexOf('')] = numbers[index];
// //       numbers[index] = '';
// //     });
// //   }
// //   checkWin();
// // }

//   void clickGrid(index) {
//     if (secondsPassed == 0) {
//       isActive = true;
//     }
//     if (index - 1 >= 0 && numbers[index - 1] == '' && (index - 1) % 4 != 3 ||
//         index + 1 < numbers.length &&
//             numbers[index + 1] == '' &&
//             (index + 1) % 4 != 0 ||
//         (index - 4 >= 0 && numbers[index - 4] == '') ||
//         (index + 4 < numbers.length && numbers[index + 4] == '')) {
//       setState(() {
//         move++;
//         numbers[numbers.indexOf('')] = numbers[index];
//         numbers[index] = '';
//       });
//     }
//     checkWin();
//   }

//   void startTime() {
//     if (isActive) {
//       setState(() {
//         secondsPassed = secondsPassed + 1;
//       });
//     }
//   }

//   void reset() {
//     setState(() {
//       numbers.shuffle();
//       move = 0;
//       secondsPassed = 0;
//       isActive = false;
//     });
//   }

// //   @override
// //   void dispose() {
// //   timer?.cancel(); // Cancel the timer in the dispose method
// //   super.dispose();
// // }

//   bool isSorted(List list) {
//     int prev = list.first;
//     for (var i = 1; i < list.length - 1; i++) {
//       int next = list[i];
//       if (prev > next) return false;
//       prev = next;
//     }
//     return true;
//   }

//   void checkWin() {
//     if (isSorted(numbers)) {
//       isActive = false;
//       showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return Dialog(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20.0)), //this right here
//               child: Container(
//                 height: 200,
//                 child: Padding(
//                   padding: const EdgeInsets.all(30.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "You Win!!",
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       SizedBox(
//                         width: 220.0,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           child: Text(
//                             "Close",
//                             style: TextStyle(
//                                 color: const Color.fromARGB(255, 0, 0, 0)),
//                           ),
//                           // backgroundColor: MaterialStateProperty.all(Colors.blue),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           });
//     }
//   }
// }

/// WITH KMP ALGO, USING HINT SYSTEM

import 'dart:async';
import 'package:flutter/material.dart';
import 'widgets/Menu.dart';
import 'widgets/MyTitle.dart';
import 'widgets/Grid.dart';

class Board extends StatefulWidget {
  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  var numbers = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    ''
  ];

  int move = 0;
  static const duration = const Duration(seconds: 1);
  int secondsPassed = 0;
  bool isActive = false;
  Timer? timer;

  // Hint System Variables
  String hintPattern = 'ABCDEFGHIJKLMNO';
  List<int> hintIndices = [];
  bool showHint = false;

  @override
  void initState() {
    super.initState();
    numbers.shuffle();
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        startTime();
      });
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        startTime();
      });
    }

    return SafeArea(
      child: Container(
        height: size.height,
        color: numbers == ''
            ? Colors.transparent
            : Color.fromARGB(255, 240, 81, 81),
        child: Column(
          children: <Widget>[
            MyTitle(size),
            Grid(numbers, size, clickGrid),
            Menu(reset, move, secondsPassed, size),
          ],
        ),
      ),
    );
  }

  void clickGrid(index) {
    if (secondsPassed == 0) {
      isActive = true;
    }
    if (index - 1 >= 0 && numbers[index - 1] == '' && (index - 1) % 4 != 3 ||
        index + 1 < numbers.length &&
            numbers[index + 1] == '' &&
            (index + 1) % 4 != 0 ||
        (index - 4 >= 0 && numbers[index - 4] == '') ||
        (index + 4 < numbers.length && numbers[index + 4] == '')) {
      setState(() {
        move++;
        numbers[numbers.indexOf('')] = numbers[index];
        numbers[index] = '';
      });
    }
    checkWin();
    checkHint();
  }

  void startTime() {
    if (isActive) {
      setState(() {
        secondsPassed = secondsPassed + 1;
      });
    }
  }

  void reset() {
    setState(() {
      numbers.shuffle();
      move = 0;
      secondsPassed = 0;
      isActive = false;
      showHint = false;
    });
  }

  bool isSorted(List list) {
    int prev = list.first;
    for (var i = 1; i < list.length - 1; i++) {
      int next = list[i];
      if (prev > next) return false;
      prev = next;
    }
    return true;
  }

  void checkWin() {
    if (isSorted(numbers)) {
      isActive = false;
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You Win!!",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 220.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Close",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }
  }

  void checkHint() {
    if (!showHint) {
      String currentPattern = numbers.join('');
      List<int> hintIndices = kmpSearch(currentPattern, hintPattern);
      if (hintIndices.isNotEmpty) {
        setState(() {
          showHint = true;
          this.hintIndices = hintIndices;
        });
      }
    }
  }

  List<int> kmpSearch(String text, String pattern) {
    List<int> failure = computeFailure(pattern);
    List<int> matches = [];
    int j = 0; // index in pattern
    int i = 0; // index in text

    while (i < text.length) {
      if (text[i] == pattern[j]) {
        if (j == pattern.length - 1) {
          // Match found
          matches.add(i - j);
          j = failure[j];
        } else {
          i++;
          j++;
        }
      } else if (j > 0) {
        j = failure[j - 1];
      } else {
        i++;
      }
    }

    return matches;
  }

  List<int> computeFailure(String pattern) {
    List<int> failure = List<int>.filled(pattern.length, 0);
    int j = 0;
    int i = 1;

    while (i < pattern.length) {
      if (pattern[i] == pattern[j]) {
        failure[i] = j + 1;
        i++;
        j++;
      } else if (j > 0) {
        j = failure[j - 1];
      } else {
        failure[i] = 0;
        i++;
      }
    }

    return failure;
  }
}
