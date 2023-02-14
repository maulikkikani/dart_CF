import 'package:c7_l1_1/views/screens/calc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Calc(),
  );
}

class Calc extends StatelessWidget {
  const Calc({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}