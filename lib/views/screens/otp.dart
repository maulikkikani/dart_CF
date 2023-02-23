import 'package:flutter/material.dart';
import 'dart:math';

class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  Color bgColor = Color(0xff15172B);
  Color textColor = Color(0xffF6DB87);

  TextEditingController textLength = TextEditingController();

  int OtpLength = 0;

  List OTPNumberList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              "OTP Generator",
              style: TextStyle(
                color: textColor,
                fontSize: 30,
                letterSpacing: 2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: TextField(
              maxLength: 1,
              controller: textLength,
              cursorColor: Color(0xffFCF6BA),
              style: TextStyle(
                color: Color(0xffFCF6BA),
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: "Enter OTP Length",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffFCF6BA),
                    width: 2,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffFCF6BA),
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffFFE8B8), Color(0xffF6DB87)],
                ),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(2, 5),
                    color: Colors.grey,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                onTap: () {
                  var tx = textLength.text;
                  OtpLength = int.parse(tx);
                  setState(() {
                    for (int i = 0; i < OtpLength; i++) {
                      var Rnd = Random();
                      int RndNo = Rnd.nextInt(9);
                      OTPNumberList.add(RndNo);
                    }
                  });
                },
                splashColor: Colors.white,
                child: Container(
                  height: 70,
                  width: 300,
                  alignment: Alignment.center,
                  child: Text(
                    "Generate OTP",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff15172B),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                color: Color(0xffFFE8B8),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < OtpLength; i++)
                      Container(
                        height: 50,
                        width: 50,
                        color: Color(0xffFFE8B8),
                        margin: EdgeInsets.all(7),
                        alignment: Alignment.center,
                        child: Text(
                          "${OTPNumberList[i]}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFFE8B8),
                    Color(0xffF6DB87),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(2, 5),
                    color: Colors.grey,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    OTPNumberList = [];
                    OtpLength = 0;
                  });
                },
                splashColor: Colors.white,
                child: Container(
                  height: 50,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff15172B),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: bgColor,
    );
  }
}
