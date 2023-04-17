import 'package:flutter/material.dart';
import 'package:resume_builder/views/screens/Bulid_options_page.dart';
import 'package:resume_builder/views/screens/achievement_page.dart';
import 'package:resume_builder/views/screens/carrier_objective_page.dart';
import 'package:resume_builder/views/screens/contact_info_page.dart';
import 'package:resume_builder/views/screens/declaration_page.dart';
import 'package:resume_builder/views/screens/eduction_page.dart';
import 'package:resume_builder/views/screens/experiences_page.dart';
import 'package:resume_builder/views/screens/homepage.dart';
import 'package:resume_builder/views/screens/interest_hobbies_page.dart';
import 'package:resume_builder/views/screens/personal_details_page.dart';
import 'package:resume_builder/views/screens/project_page.dart';
import 'package:resume_builder/views/screens/references_page.dart';
import 'package:resume_builder/views/screens/technical_skil.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => homepage(),
        'Bulid_options_page': (context) => Bulidoptionspage(),
        'contact_info_page': (context) => contactinfopage(),
        'technical_skil' : (context) => technicalskil(),
        'references_page' : (context) => references_page(),
        'project_page' : (context) =>  project_page(),
        'personal_details_page' : (context) =>  personal_details_page(),
        'interest_hobbies_page' : (context) => interest_hobbies_page(),
        'experiences_page' : (context) => experiences_page(),
        'eduction_page' : (context) => eduction_page(),
        'declaration_page' : (context) => declaration_page(),
        'carrier_objective_page' : (context) => carrier_objective_page(),
        'achievement_page' : (context) => achievement_page(),
      },
    ),
  );
}
