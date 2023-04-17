import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class references_page extends StatefulWidget {
  const references_page({Key? key}) : super(key: key);

  @override
  State<references_page> createState() => _references_pageState();
}

class _references_pageState extends State<references_page> {
  final GlobalKey<FormState> References_FormKey = GlobalKey<FormState>();
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
        title: Text("References"),
        centerTitle: true,
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            setState(() {
              References_FormKey.currentState!.save();

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
            height: h * 0.42,
            width: w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Form(
              key: References_FormKey,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Reference Name",
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
                          hintText: "Suresh Shah",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.Reference_Name = val;
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Designation",
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
                          hintText: "Marketing Manager, ID-342332",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.Designation = val;
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Organization/lnstitute",
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
                          hintText: "Green Energy Pvt. Ltd",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.Organization_lnstitute = val;
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