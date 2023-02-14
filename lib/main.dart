import 'package:c7_l3_1/views/screens/Todoapp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    To(),
  );
}

class To extends StatelessWidget {
  const To({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Do(),
    );
  }
}