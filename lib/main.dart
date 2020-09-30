import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List colors = [ Colors.white, Colors.red, Colors.green, Colors.yellow, Colors.purple, Colors.orange, Colors.greenAccent];
  Random random = new Random();

  int index = 0;
  int count =0;

  void changeIndex() {
    setState(() => index = random.nextInt(7));
    count++;
    print("CLICKED ON SCREEN");
  }

  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      appBar: AppBar(
        title:
          Text("Random Color App"), backgroundColor: Colors.grey,
      ),
      body: Container(
        child: GestureDetector(
          onTap: () => changeIndex(),
            child: Scaffold(
              backgroundColor: colors[index],
              body: Center(
                child: Text('Hey there!' + '\nYou clicked ' + count.toString(), style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),),
              ),
            ),
        ),
      ),
    );
  }
}