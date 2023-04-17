import 'package:flutter/material.dart';
import '../../utils/globals.dart';

class project_page extends StatefulWidget {
  const project_page({Key? key}) : super(key: key);

  @override
  State<project_page> createState() => _project_pageState();
}

class _project_pageState extends State<project_page> {
  final GlobalKey<FormState> project_FormKey = GlobalKey<FormState>();
  final TextEditingController Project_Title = TextEditingController();
  final TextEditingController roles = TextEditingController();
  final TextEditingController Technologies = TextEditingController();
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
        title: Text("Projects"),
        centerTitle: true,
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            setState(() {
              project_FormKey.currentState!.save();

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
            height: h * 0.72,
            width: w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Form(
              key: project_FormKey,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Project Title",
                        style: details_name,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: Project_Title,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Resume Builder App",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.project_Title = val;
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Technologies ",
                        style: details_name,
                      ),
                      CheckboxListTile(
                        title: Text("C Programing"),
                        value: Global.c,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (val) {
                          setState(() {
                            Global.c = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("C++"),
                        value: Global.cpp,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (val) {
                          setState(() {
                            Global.cpp = val!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("Flutter"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: Global.flutter,
                        onChanged: (val) {
                          setState(() {
                            Global.flutter = val!;
                          });
                        },
                      ),
                      Text(
                        "Roles",
                        style: details_name,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: roles,
                        keyboardType: TextInputType.number,
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
                          Global.roles = val;
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Technologies",
                        style: details_name,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: Technologies,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "5- Programmers",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.technologies = val;
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Project Descripation",
                        style: details_name,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: Project_Descripation,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: "Enter Your Project Descripation",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          Global.project_Descripation = val;
                        },
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