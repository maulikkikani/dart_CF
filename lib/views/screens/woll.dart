import 'package:flutter/material.dart';

class woll extends StatefulWidget {
  const woll({Key? key}) : super(key: key);

  @override
  State<woll> createState() => _wollState();
}

class _wollState extends State<woll> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    double box = h * 0.15;
    return Scaffold(
      appBar: AppBar(
        title: Text("THE WALL"),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(),
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: box,
                      width: box,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}