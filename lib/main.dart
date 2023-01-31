import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Red & White"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Align(
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "             G",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "R",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "APHICS\n",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "    FLUTT",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "E",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "R",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n          AN",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "D",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "ROID",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\nDESIGN ",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "& ",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "DEVELOP",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n           W",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "EB",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n        FAS",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "H",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "ION",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n ANIMAT",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "I",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "ON",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n              I",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "T",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "A-CS+",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n       GAM",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "E",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
