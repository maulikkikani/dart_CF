import 'package:flutter/material.dart';

class Do extends StatefulWidget {
  const Do({Key? key}) : super(key: key);

  @override
  State<Do> createState() => _DoState();
}

class _DoState extends State<Do> {
  int i = 1;
  int a = 9;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do-App"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          Icon(Icons.menu),
          SizedBox(
            width: 14,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            i,
                (index) => Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: h * 0.1,
                    width: h * 0.1,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "${((index + a) < 13) ? index + a : (index + a) - 12}:00\n${((index + a) < 13) ? "AM" : "PM"}",
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    height: h * 0.1,
                    width: w * 0.73,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          setState(() {
            i++;
          });
        },
        child: Container(
          height: h * 0.1,
          width: h * 0.1,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}