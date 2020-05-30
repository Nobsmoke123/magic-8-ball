import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballCount = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything',
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Text(
              'Ask Me Anything'
          ),
        ),
        body: Center(
          child: FlatButton(
            onPressed: (){
              setState(() {
                ballCount = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$ballCount.png'),
          ),
        ),
      ),
    );
  }
}
