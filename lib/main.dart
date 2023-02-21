import 'package:c8_l1_1/views/screens/Firstpage.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
    );
  }
}
