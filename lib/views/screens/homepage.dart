import 'dart:math';

import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  double sliderval = 0;
  Color activeColor = Colors.green;

  List myvalu = [
    {
      'title': "Loan Amount",
      'min': 10000,
      'max': 1000000.0,
      'value': 10000.0,

    },
    {
      'title': "Interest Rate",
      'min': 6.0,
      'max': 20.0,
      'value': 6.0,

    },
    {
      'title': "Loan Tenure",
      'min': 6.0,
      'max': 120.0,
      'value': 6.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_balance_outlined),
        title: const Text("Loan Calculator "),
        centerTitle: true,
        backgroundColor: Color(0xff609966),
        elevation: 0,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: h,
              width: w,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff9DC08B),
                    Color(0xffEDF1D6),
                  ],
                  stops: [0.2, 0.4],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Container(
              height: h * 0.8,
              width: w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Column(

                  children:  myvalu
                      .map(
                        (e) => mybox(
                          title: e['title'],
                          min: e['min'].toDouble(),
                          max: e['max'].toDouble(),
                          index: myvalu.indexOf(e),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget mybox({
    required String title,
    required double min,
    required double max,
    required int index,
  }) {
    // var myvalu;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(title),
          Stack(
            alignment: Alignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffE5E6E8),
                ),
              ),
              Text(
                "${myvalu[index]['value'].toInt().toString()}",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Slider(
            min: min,
            max: max,
            value: myvalu[index]['value'].toDouble(),
            onChanged: (val) {
              // setState(() {
              //   myvalu[index]['value'] = val;
              // });

                setState(() {
                  myvalu[index]['value'] = val;
                });

            },
          ),
        ],
      ),
    );
  }

}

