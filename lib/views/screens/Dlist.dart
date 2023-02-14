import 'package:flutter/material.dart';

class dynami extends StatefulWidget {
  const dynami({Key? key}) : super(key: key);

  @override
  State<dynami> createState() => _dynamiState();
}

class _dynamiState extends State<dynami> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              i,
                  (index) => Container(
                height: h * 0.1,
                width: w * 0.9,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: (index % 2 == 0)
                      ? Colors.blue.shade900
                      : Colors.blueAccent.shade400,
                ),
                alignment: Alignment.center,
                child: Text(
                  "${index + 1}",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                i++;
              });
            },
            child: Container(
              width: h * 0.1,
              height: h * 0.1,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueGrey,
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
          ),
          SizedBox(
            width: h * 0.01,
          ),
          InkWell(
            onTap: () {
              setState(() {
                if (i >= 1) i--;
              });
              ;
            },
            child: Container(
              width: h * 0.1,
              height: h * 0.1,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueGrey,
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.minimize_outlined,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}