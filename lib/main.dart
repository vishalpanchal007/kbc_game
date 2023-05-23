import 'package:flutter/material.dart';
import 'package:kbcgame/home_screen.dart';

void main() {
  runApp(KBCgame());
}

class KBCgame extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KBCgamestate();
  }
}

class KBCgamestate extends State<KBCgame> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
