import 'package:c7_l1_3/views/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    page(),
  );
}

class page extends StatelessWidget {
  const page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}