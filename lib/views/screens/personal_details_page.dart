import 'package:flutter/material.dart';


import '../../utils/globals.dart';

class personal_details_page extends StatefulWidget {
  const personal_details_page({Key? key}) : super(key: key);

  @override
  State<personal_details_page> createState() => _personal_details_pageState();
}

class _personal_details_pageState extends State<personal_details_page> {
  final GlobalKey<FormState> personal_det_FormKey = GlobalKey<FormState>();
  final TextEditingController D_controller = TextEditingController();
  final TextEditingController M_controller = TextEditingController();
  final TextEditingController Y_controller = TextEditingController();
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
        title: Text("Personal Details"),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: h * 0.7,
            width: w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Form(
              key: personal_det_FormKey,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DOB",
                        style: details_name,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: D_controller,
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "DD",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                border: OutlineInputBorder(),
                              ),
                              onSaved: (val) {
                                Global.DD = val;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: M_controller,
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "MM",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                border: OutlineInputBorder(),
                              ),
                              onSaved: (val) {
                                Global.MM = val;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: Y_controller,
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                hintText: "YYYY",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                border: OutlineInputBorder(),
                              ),
                              onSaved: (val) {
                                Global.YYYY = val;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Marital Status",
                        style: details_name,
                      ),
                      RadioListTile(
                        title: Text(
                          "Single",
                          style: TextStyle(
                            color: (Global.Marital_Status == "Single")
                                ? Colors.blue
                                : Colors.black,
                          ),
                        ),
                        value: "Single",
                        groupValue: Global.Marital_Status,
                        onChanged: (val) {
                          setState(() {
                            Global.Marital_Status = val!;
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Married",
                          style: TextStyle(
                            color: (Global.Marital_Status == "Married")
                                ? Colors.blue
                                : Colors.black,
                          ),
                        ),
                        value: "Married",
                        groupValue: Global.Marital_Status,
                        onChanged: (val) {
                          setState(() {
                            Global.Marital_Status = val!;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Languages Known",
                        style: details_name,
                      ),
                      CheckboxListTile(
                        title: Text("English"),
                        value: Global.LEnglish,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (val) {
                          setState(() {
                            Global.LEnglish = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("Hindi"),
                        value: Global.LHindi,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (val) {
                          setState(() {
                            Global.LHindi = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("Gujarati"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: Global.LGujarati,
                        onChanged: (val) {
                          setState(() {
                            Global.LGujarati = val!;
                          });
                        },
                      ),
                      Text(
                        "country",
                        style: details_name,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      DropdownButton(
                          value: Global.country,
                          hint: Text("select your country"),
                          items: [
                            DropdownMenuItem(
                              child: Text("india"),
                              value: "india",
                            ),
                            DropdownMenuItem(
                              child: Text("China"),
                              value: "China",
                            ),
                            DropdownMenuItem(
                              child: Text("Russia"),
                              value: "Russia",
                            ),
                            DropdownMenuItem(
                              child: Text("USA"),
                              value: "USA",
                            ),
                          ],
                          onChanged: (val) {
                            setState(() {
                              Global.country = val;
                            });
                          })
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