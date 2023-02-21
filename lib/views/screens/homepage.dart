import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var shadow = const BoxShadow(
    color: Colors.black26,
    offset: Offset(3,5),
    blurRadius: 10,
    spreadRadius: 3,
  );
  var text = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Stack App",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: h*0.15,
              width: w*0.33,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [shadow],
              ),
              alignment: Alignment(-0.7,-0.8),
              child: Text(
                "Purple",
                style: text,
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: 50,
            child: Container(
              height: h*0.15,
              width: w*0.33,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [shadow],
              ),
              alignment: Alignment(-0.7,-0.8),
              child: Text(
                "Indigo",
                style: text,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 90,
            child: Container(
              height: h*0.15,
              width: w*0.33,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [shadow],
              ),
              alignment: Alignment(-0.7,-0.8),
              child: Text(
                " Ligth Blue",
                style: text,
              ),
            ),
          ),
          Positioned(
            top: 145,
            left: 130,
            child: Container(
              height: h*0.15,
              width: w*0.33,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [shadow],
              ),
              alignment: Alignment(-0.7,-0.8),
              child: Text(
                "Green",
                style: text,
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: 170,
            child: Container(
              height: h*0.15,
              width: w*0.33,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [shadow],
              ),
              alignment: Alignment(-0.7,-0.8),
              child: Text(
                "Amber",
                style: text,
              ),
            ),
          ),
          Positioned(
            top: 235,
            left: 210,
            child: Container(
              height: h*0.15,
              width: w*0.33,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [shadow],
              ),
              alignment: Alignment(-0.7,-0.8),
              child: Text(
                "Orange",
                style: text,
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 250,
            child: Container(
              height: h*0.15,
              width: w*0.32,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [shadow],
              ),
              alignment: Alignment(-0.7,-0.8),
              child: Text(
                "RedAccent",
                style: text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
