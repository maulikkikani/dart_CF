import 'package:c9_l2_1/views/screens/lottery.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    const home(),
  );
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:lottery(),
    );
  }
}

