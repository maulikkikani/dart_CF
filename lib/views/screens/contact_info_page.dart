import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_builder/utils/globals.dart';
import 'package:image_picker/image_picker.dart';

class contactinfopage extends StatefulWidget {
  const contactinfopage({Key? key}) : super(key: key);

  @override
  State<contactinfopage> createState() => _contactinfopageState();
}

class _contactinfopageState extends State<contactinfopage> {
  int initialLayer = 0;
  final GlobalKey<FormState> contactFormkey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController address1Controller = TextEditingController();
  final TextEditingController address2Controller = TextEditingController();
  final TextEditingController address3Controller = TextEditingController();

  String? name;
  String? email;
  String? phone;
  String? address1;
  String? address2;
  String? address3;

  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
        title: Text("Resume Workspace"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          initialLayer = 0;
                        });
                      },
                      child: Text(
                        "Contect",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          initialLayer = 1;
                        });
                      },
                      child: Text(
                        "Photo",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                color: Color(0xffededed),
                padding: const EdgeInsets.all(24),
                child: IndexedStack(
                  index: initialLayer,
                  children: [
                    //contect
                    SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.white,
                        height: 400,
                        width: double.infinity,
                        child: Form(
                          key: contactFormkey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: nameController,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your name first...";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  name = val;
                                },
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: "Name",
                                  prefixIcon: Icon(
                                    Icons.person,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                controller: emailController,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your email first";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  email = val;
                                },
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  prefixIcon: Icon(
                                    Icons.email,

                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                controller: phoneController,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your phone no. first...";
                                  } else if (val!.length != 10) {
                                    return "Enter 10 digit phone no..... ";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  phone = val;
                                },
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: "Phone",
                                  prefixIcon: Icon(
                                    Icons.phone_android,

                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                controller: address1Controller,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your address first...";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  address1 = val;
                                },
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: "Address (Street, Building No)",
                                  prefixIcon: Icon(
                                    Icons.location_on,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                controller: address2Controller,
                                onSaved: (val) {
                                  address2 = val;
                                },
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: "Address Line 2",
                                ),
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                controller: address3Controller,
                                onSaved: (val) {
                                  address3 = val;
                                },
                                textInputAction: TextInputAction.done,
                                onFieldSubmitted: (val) {
                                  if (contactFormkey.currentState!.validate()) {
                                    contactFormkey.currentState!.validate();

                                    print("======================");
                                    print(name);
                                    print(email);
                                    print(phone);
                                    print(address1);
                                    print(address2);
                                    print(address3);
                                    print("======================");
                                  }
                                },
                                decoration: InputDecoration(
                                  hintText: "Address Line 3",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //photo
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 300,
                      width: double.infinity,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            child: Text(
                              "ADD",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            foregroundImage: (Global.image != null)
                                ? FileImage(Global.image as File)
                                : null,
                          ),
                          FloatingActionButton(
                            mini: true,
                            child: Icon(Icons.add),
                            onPressed: () async {
                              XFile? xfile = await picker.pickImage(
                                source: ImageSource.camera);
                              String imagePath = xfile!.path;
                              setState(() {
                                Global.image = File(imagePath);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
