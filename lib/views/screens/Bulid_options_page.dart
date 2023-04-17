import 'package:flutter/material.dart';

class Bulidoptionspage extends StatefulWidget {
  const Bulidoptionspage({Key? key}) : super(key: key);

  @override
  State<Bulidoptionspage> createState() => _BulidoptionspageState();
}

class _BulidoptionspageState extends State<Bulidoptionspage> {
  List<Map<String, dynamic>> allBuildoptions = [
    {
      "image": "assets/image/contact-books.png",
      "title": "Contact Info",
      "route": "contact_info_page"
    },
    {
      "image": "assets/image/briefcase.png",
      "title": "Carrier Objective",
      "route": "carrier_objective_page"
    },
    {
      "image": "assets/image/user.png",
      "title": "Personal Datails",
      "route": "personal_datails_page"
    },
    {
      "image": "assets/image/mortarboard.png",
      "title": "Eduction",
      "route": "eduction_page"
    },
    {
      "image": "assets/image/thinking.png",
      "title": "Experiences",
      "route": "experiences_page"
    },
    {
      "image": "assets/image/declaration.png",
      "title": "Technical Skills",
      "route": "technical_skills_page"
    },
    {
      "image": "assets/image/open-book.png",
      "title": "Interest/Hobbies",
      "route": "interest_hobbies_page"
    },
    {
      "image": "assets/image/project.png",
      "title": "Projects",
      "route": "projects_page"
    },
    {
      "image": "assets/image/experience.png",
      "title": "Achievements",
      "route": "achievements_page"
    },
    {
      "image": "assets/image/handshake.png",
      "title": "References",
      "route": "references_page"
    },
    {
      "image": "assets/image/achievement.png",
      "title": "Declaration",
      "route": "declaration_page"
    },
  ];

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
        toolbarHeight: 140,
        title: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Resume Workspace"),
              const SizedBox(height: 35),
              Text("Build Options"),
            ],
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: allBuildoptions.map((e) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          e['image'],
                          width: 40,
                        ),
                        const SizedBox(width: 25),
                        Text(
                          e['title'],
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(e['route']);
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
