import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class interest_hobbies_page extends StatefulWidget {
  const interest_hobbies_page({Key? key}) : super(key: key);

  @override
  State<interest_hobbies_page> createState() => _interest_hobbies_pageState();
}

class _interest_hobbies_pageState extends State<interest_hobbies_page> {
  List<TextEditingController> allHobbies = [];

  @override
  void initState() {
    super.initState();
    allHobbies.add(TextEditingController());
    allHobbies.add(TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Interests/Hobbies"),
        centerTitle: true,
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            setState(() {
              allHobbies.forEach((e) {
                Global.interests_hobbies.add(e.text);
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
                    "Enter your Interests/Hobbies",
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
                        children: allHobbies
                            .map(
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
                                    hintText: "interests_hobbies",
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      allHobbies.remove(e);
                                    });
                                  },
                                  icon: Icon(Icons.delete),
                                ),
                              ),
                            ],
                          ),
                        )
                            .toList(),
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
                          allHobbies.add(TextEditingController());
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