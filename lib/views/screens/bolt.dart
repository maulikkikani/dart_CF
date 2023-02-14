import 'package:flutter/material.dart';

class bolt extends StatefulWidget {
  const bolt({Key? key}) : super(key: key);

  @override
  State<bolt> createState() => _boltState();
}

class _boltState extends State<bolt> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment(0, 0.7),
                child: Text(
                  "Bolt",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 10,
                  ),
                ),
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 16,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      width: w * 0.4,
                      color: Colors.yellow,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      alignment: Alignment(-0.8, 0),
                      color: Colors.black,
                      child: Icon(
                        Icons.bolt,
                        size: 100,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      width: w * 0.4,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}