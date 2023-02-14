import 'package:c7_l1_2/views/screens/map.dart';
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