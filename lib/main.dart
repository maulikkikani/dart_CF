import 'package:flutter/material.dart';
import 'package:invoice_app/views/screens/HOME/invoiceDetailsPage.dart';
import 'package:invoice_app/views/screens/Information/read2.dart';
import 'package:invoice_app/views/screens/HOME/pdfPage.dart';
import 'package:invoice_app/views/screens/Login Process/signInPage.dart';
import 'package:invoice_app/views/screens/Login Process/signUpPage.dart';
import 'package:invoice_app/views/screens/splashScreen.dart';
import 'package:invoice_app/views/screens/HOME/homePage.dart';

void main(){
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splashScreen',
      routes: {
        'splashScreen' : (context) => const splashscreen(),
        'signInPage' : (context) => const SignInPage(),
        'signUpPage' : (context) => const SignUpPage(),
        'read2' : (context) => const Read2(),
        '/' : (context) => const HomePage(),
        'invoiceDetailsPage' : (context) => const InvoiceDetailsPage(),
        'pdfPage' : (context) => const PdfPage(),
      },
    );
  }
}

