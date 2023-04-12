import 'package:ch10_1/utils/comlist.dart';
import 'package:ch10_1/views/screens/page1.dart';
import 'package:flutter/material.dart';

import '../../utils/comlist.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("MNC CEOs"),
        centerTitle: true,
      ),
      body: Align(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: MYList.map(
                    (e) => Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      foregroundImage: NetworkImage(
                        e['logo'],
                      ),
                    ),
                    title: Text("${e['name']}"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (Context) => page1(Data: e),
                        ),
                      );
                    },
                  ),
                ),
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}