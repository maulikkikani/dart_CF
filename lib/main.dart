import 'package:calc_1/views/screens/calc1.dart';
import 'package:flutter/material.dart';

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
      home: calc1(),
    );
  }
}
