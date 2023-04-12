import 'package:c9_l1_1/utils/pic.dart';
import 'package:flutter/material.dart';

class gallery extends StatefulWidget {
  const gallery({Key? key}) : super(key: key);

  @override
  State<gallery> createState() => _galleryState();
}

class _galleryState extends State<gallery> {
  bool isList = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Gallery Viewer"),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (isList == true) {
                    isList = false;
                  } else {
                    isList = true;
                  }
                });
              },
              child: Icon(Icons.grid_view),
            ),
          ],
        ),
        body: (isList)
            ? SingleChildScrollView(
          child: Column(
            children: pic.map((e) =>
                Container(child: Image.asset(imagepath + e),),).toList(),
          ),
        ) : SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: pic.map((e) =>
    Container(child: Image.asset(imagepath + e),),).toList(),
    ),
        ),
    );
  }
}
