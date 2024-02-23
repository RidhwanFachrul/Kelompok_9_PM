import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Telkomsel',
            style: TextStyle(color: const Color.fromARGB(255, 255, 0, 0)),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: Center(
          child: Image(
            image: AssetImage('asset/Image/Login.png')
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
    ),
  );
}
