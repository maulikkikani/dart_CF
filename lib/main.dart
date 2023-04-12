import 'package:c9_l1_1/views/screens/gallery.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    homepage(),
  );
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: gallery(),
    );
  }
}
