import 'package:flutter/material.dart';
import 'package:t_1/views/screens/homepage.dart';
void main(){
  runApp(
      myapp(),
  );
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

