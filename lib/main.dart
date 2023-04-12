import 'package:diceapp/views/screens/homepage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    diceapp(),
  );
}

class diceapp extends StatelessWidget {
  const diceapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: homepage(),
    );
  }
}
