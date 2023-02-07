import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Openclose(),
    ),
  );
}

class Openclose extends StatefulWidget {
  const Openclose({Key? key}) : super(key: key);

  @override
  State<Openclose> createState() => _OpencloseState();
}

class _OpencloseState extends State<Openclose> {
  double a = 50;
  double b = 50;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Open - close Door"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Align(
        child: InkWell(
          onTap: () {
            setState(() {
              if (a > 60) {
                a = a - 25;
                b = b + 25;
              }
            });
          },
          onDoubleTap: () {
            setState(() {
              if (a < 80) {
                a = a + 25;
                b = b - 25;
              }
            });
          },
          child: Container(
            width: 200,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Colors.black,
                  width: b,
                ),
                vertical: BorderSide(
                  color: Colors.grey,
                  width: a,
                ),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              "maulik\nkikani",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
