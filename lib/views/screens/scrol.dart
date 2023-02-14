import 'package:flutter/material.dart';

class scrol extends StatefulWidget {
  const scrol({Key? key}) : super(key: key);

  @override
  State<scrol> createState() => _scrolState();
}

class _scrolState extends State<scrol> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Spleter"),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Align(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    10,
                        (index) => Container(
                      height: h * 0.1,
                      width: w * 0.9,
                      margin: EdgeInsets.all(10),
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Text("${index + 1}"),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    10,
                        (index) => Container(
                      height: h * 0.5,
                      width: w * 0.2,
                      margin: EdgeInsets.all(10),
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Text("${index + 1}"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.orange,
    );
  }
}