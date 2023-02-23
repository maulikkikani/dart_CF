import 'package:pr_3_1/views/screens/otp.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    const maulik(),
  );
}

class maulik extends StatelessWidget {
  const maulik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: otp(),
    );
  }
}
