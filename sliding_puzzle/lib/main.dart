import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sliding_puzzle/board.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(SlidingPuzzle());
}

class SlidingPuzzle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "15-Tile Shifter",
      debugShowCheckedModeBanner: false,
      home: Board(),
    );
  }
}
