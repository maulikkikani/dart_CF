import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class eduction_page extends StatefulWidget {
  const eduction_page({Key? key}) : super(key: key);

  @override
  State<eduction_page> createState() => _eduction_pageState();
}

class _eduction_pageState extends State<eduction_page> {
  final GlobalKey<FormState> eduction_FormKey = GlobalKey<FormState>();
  final TextEditingController Course_Degree = TextEditingController();
  final TextEditingController School_College_lnstitute =
  TextEditingController();
  final TextEditingController School_College_lnstitute_cgpa =
  TextEditingController();
  final TextEditingController Year_Of_Pass = TextEditingController();
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
        title: Text("Eduction"),
        centerTitle: true,
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            setState(() {
              eduction_FormKey.currentState!.save();

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
            height: h * 0.54,
            width: w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Form(
              key: eduction_FormKey,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Course/Degree",
                        style: details_name,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: Course_Degree,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "B. Tech Information Technology",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.Course_Degree = val;
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
                        controller: School_College_lnstitute,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Bhagavan Mahavir University",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.School_College_lnstitute = val;
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
                        controller: School_College_lnstitute_cgpa,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: "70% (or) 7.0 CGPA",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.School_College_lnstitute_cgpa = val;
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Year Of Pass",
                        style: details_name,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: Year_Of_Pass,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: "2019",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.Year_Of_Pass = val;
                        },
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