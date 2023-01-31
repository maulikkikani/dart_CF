import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "🛍️ List of  Fruits",
            style: TextStyle(
              fontSize: 25 ,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body:Align(
          child: RichText(
            textAlign: TextAlign.start,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "🍎 Apple",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🍇 Graps",
                  style: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🍒 Cherry",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🍓 Strawberry",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🥭 Mango",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🍍 Pineapple",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🍋 Lemon",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🍉 Watermelon",
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\n🥥 Coconut",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}


