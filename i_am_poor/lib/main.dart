import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
            child: Text('I am Poor'),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/poop.png'),
          ),
        ),
      ),
    ),
  );
}
