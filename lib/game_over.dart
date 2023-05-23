import 'package:flutter/material.dart';
import 'package:kbcgame/home_screen.dart';

class gameover extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return gameoverstate();
  }
}

class gameoverstate extends State<gameover> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/fire_.png",
                  height: 70,
                  width: 70,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Congratulations ",
                  style: TextStyle(color: Colors.red, fontSize: 18),
                  textDirection: TextDirection.rtl,
                ),

                SizedBox(
                  height: 30,
                ),
                Text(
                  "Game Over",
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 30),
                ),
                //SizedBox(height: 30,),

                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(160, 40),
                      backgroundColor: Color.fromRGBO(24, 25, 30, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homescreen()));
                  },
                  child: Text('Restart'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
