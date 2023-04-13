import 'package:flutter/material.dart';
import 'package:kbc_game/views/screens/homepage.dart';
import 'package:kbc_game/views/screens/winer.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const HomePage(),
      'winer': (context) => winer(),
    },
  ));
}