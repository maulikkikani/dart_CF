import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class carrier_objective_page extends StatefulWidget {
  const carrier_objective_page({Key? key}) : super(key: key);

  @override
  State<carrier_objective_page> createState() => _carrier_objective_pageState();
}

class _carrier_objective_pageState extends State<carrier_objective_page> {
  final GlobalKey<FormState> objectiveFormKey = GlobalKey<FormState>();
  final TextEditingController Career_Objective_controller =
  TextEditingController();
  final TextEditingController Current_Designation_controller =
  TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrier Objective"),
        centerTitle: true,
        toolbarHeight: 100,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                Current_Designation_controller.clear();
                Career_Objective_controller.clear();

                Global.career_Objective = null;
                Global.current_Designation = null;
              });
            },
            icon: Icon(Icons.clear_rounded),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: objectiveFormKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: h * 0.35,
                    width: w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Career Objective",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              controller: Career_Objective_controller,
                              maxLines: 8,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Descripation",
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onSaved: (val) {
                                Global.career_Objective = val;
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your objective first...";
                                }
                              },
                              textInputAction: TextInputAction.next,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: h * 0.2,
                    width: w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Current Designation(ExperiencedCandidate)",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              controller: Current_Designation_controller,
                              maxLines: 2,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Software Engineer",
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onSaved: (val) {
                                Global.current_Designation = val;
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Current Designation first...";
                                }
                              },
                              onFieldSubmitted: (val) {
                                if (objectiveFormKey.currentState!.validate()) {
                                  objectiveFormKey.currentState!.save();
                                }
                              },
                              textInputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                      ),
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