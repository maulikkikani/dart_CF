import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class achievement_page extends StatefulWidget {
  const achievement_page({Key? key}) : super(key: key);

  @override
  State<achievement_page> createState() => _achievement_pageState();
}

class _achievement_pageState extends State<achievement_page> {
  List<TextEditingController> Achievement = [];

  @override
  void initState() {
    super.initState();
    Achievement.add(TextEditingController());
    Achievement.add(TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Achievement"),
        centerTitle: true,
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            setState(() {
              Achievement.forEach((e) {
                Global.Achievements.add(e.text);
              });

              Navigator.of(context).pop();
            });
          },
          icon: Icon(Icons.keyboard_backspace),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: h * 0.35,
            width: w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    "Enter your Achievements",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: h * 0.2,
                    width: w,
                    alignment: Alignment.center,
                    child: SingleChildScrollView(
                      child: Column(
                        children: Achievement.map(
                              (e) => Row(
                            children: [
                              Expanded(
                                flex: 8,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    hintText: "Achievement",
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Achievement.remove(e);
                                    });
                                  },
                                  icon: Icon(Icons.delete),
                                ),
                              ),
                            ],
                          ),
                        ).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: w,
                    child: OutlinedButton(
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          Achievement.add(TextEditingController());
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffededed),
    );
  }
}