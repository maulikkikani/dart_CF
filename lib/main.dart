import 'package:flutter/material.dart';
import 'package:instagram/views/screens/homepage.dart';

void main() {
  runApp(
    instaApp(),
  );
}

class instaApp extends StatelessWidget {
  const instaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
