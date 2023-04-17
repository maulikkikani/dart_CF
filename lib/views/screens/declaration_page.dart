import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class declaration_page extends StatefulWidget {
  const declaration_page({Key? key}) : super(key: key);

  @override
  State<declaration_page> createState() => _declaration_pageState();
}

class _declaration_pageState extends State<declaration_page> {
  final GlobalKey<FormState> declaration_FormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Declaration"),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: (Global.declaration)
              ? Container(
            height: h * 0.64,
            width: w,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.topCenter,
            child: Form(
              key: declaration_FormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: h * 0.1,
                    alignment: Alignment.center,
                    child: SwitchListTile(
                      value: Global.declaration,
                      title: Text(
                        "Declaration",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      onChanged: (val) {
                        setState(() {
                          Global.declaration = val;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.network(
                        "https://thumbs.dreamstime.com/b/red-aim-icon-target-arrow-concept-perfect-hit-composition-cross-aim-sign-success-logo-absolute-winner-vector-illustration-red-128081996.jpg"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Descripation",
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: w * 0.05,
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Date",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 40,
                                width: 100,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: w * 0.2,
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Place",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 40,
                                width: 100,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Save"),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
              : Container(
            height: h * 0.1,
            width: w,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: SwitchListTile(
              value: Global.declaration,
              title: Text(
                "Declaration",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.grey),
              ),
              onChanged: (val) {
                setState(() {
                  Global.declaration = val;
                });
              },
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffededed),
    );
  }
}