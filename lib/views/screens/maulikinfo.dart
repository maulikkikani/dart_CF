import 'package:flutter/material.dart';

class maulikinfo extends StatefulWidget {
  const maulikinfo({Key? key}) : super(key: key);

  @override
  State<maulikinfo> createState() => _maulikinfoState();
}

class _maulikinfoState extends State<maulikinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Maulik"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Hello I am maulik kikani",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
