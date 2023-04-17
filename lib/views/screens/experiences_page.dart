import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class experiences_page extends StatefulWidget {
  const experiences_page({Key? key}) : super(key: key);

  @override
  State<experiences_page> createState() => _experiences_pageState();
}

class _experiences_pageState extends State<experiences_page> {
  final GlobalKey<FormState> experience_FormKey = GlobalKey<FormState>();
  final TextEditingController comp_name = TextEditingController();
  final TextEditingController College_nstitute = TextEditingController();
  final TextEditingController roles = TextEditingController();
  final TextEditingController Project_Descripation = TextEditingController();
  TextStyle details_name = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.blueAccent,
  );
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Experience"),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: h * 0.72,
            width: w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Form(
              key: experience_FormKey,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Company Name",
                        style: details_name,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: comp_name,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "New Enterprise, San Francisco",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.comp_name = val;
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "School/College/lnstitute",
                        style: details_name,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: College_nstitute,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Organize team members, Codeanalysis",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.exp_College_nstitute = val;
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "roles(optional)",
                        style: details_name,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: roles,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText:
                          "Working with team members tocome up with new concepts andproduct analysis..",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.exp_roles = val;
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Employed Status",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: true,
                            groupValue: Global.Employed_Status,
                            onChanged: (val) {
                              setState(() {
                                Global.Employed_Status = val!;
                              });
                            },
                          ),
                          Text(
                            "Previously Employed",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 11,
                            ),
                          ),
                          Radio(
                            value: false,
                            groupValue: Global.Employed_Status,
                            onChanged: (val) {
                              setState(() {
                                Global.Employed_Status = val!;
                              });
                            },
                          ),
                          Text(
                            "Currently Employed",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                      (Global.Employed_Status)
                          ? Column(
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
                                    "Joined Date",
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
                                    "End Date",
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
                      )
                          : Row(
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
                                "Joined Date",
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffededed),
    );
  }
}