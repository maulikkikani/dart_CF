import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _CalcState();
}

class _CalcState extends State<home> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("map"),
        centerTitle: true,
        leading: Icon(Icons.menu),
        backgroundColor: Colors.blue,
      ),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: h * 0.08,
              width: w * 0.95,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Text("Exit"),
                  SizedBox(
                    width: w * 0.73,
                  ),
                  Icon(Icons.exit_to_app),
                  SizedBox(
                    width: w * 0.05,
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.08,
              width: w * 0.95,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Text("Play"),
                  SizedBox(
                    width: w * 0.72,
                  ),
                  Icon(Icons.play_arrow),
                  SizedBox(
                    width: w * 0.05,
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.08,
              width: w * 0.95,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Text("Pause"),
                  SizedBox(
                    width: w * 0.70,
                  ),
                  Icon(Icons.pause),
                  SizedBox(
                    width: w * 0.05,
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.08,
              width: w * 0.95,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Text("Stop"),
                  SizedBox(
                    width: w * 0.72,
                  ),
                  Icon(Icons.stop),
                  SizedBox(
                    width: w * 0.05,
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.08,
              width: w * 0.95,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Text("close"),
                  SizedBox(
                    width: w * 0.71,
                  ),
                  Icon(Icons.close),
                  SizedBox(
                    width: w * 0.05,
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.08,
              width: w * 0.95,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Text("Delete"),
                  SizedBox(
                    width: w * 0.70,
                  ),
                  Icon(Icons.delete),
                  SizedBox(
                    width: w * 0.05,
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.08,
              width: w * 0.95,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Text("Email"),
                  SizedBox(
                    width: w * 0.71,
                  ),
                  Icon(Icons.email),
                  SizedBox(
                    width: w * 0.05,
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