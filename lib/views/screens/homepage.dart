import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    double Boxs = h * 0.15;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Icons",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Align(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.disc_full_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.chevron_left_sharp,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.lightbulb,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.bolt,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.chevron_right_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.alarm,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.mouse,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.cable,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.kayaking,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.desktop_windows,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.switch_access_shortcut,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.sensor_window_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.door_back_door_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.car_crash_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.train,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.business,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.home_max,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.face_retouching_natural_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.filter_frames,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.table_bar,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.table_restaurant_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.chair,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.done_outline_rounded,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.directions_bike,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.airplanemode_active_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.man,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.woman,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.child_care,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.shopping_bag,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.child_friendly_rounded,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.add_box,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.airline_seat_flat_angled,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.linear_scale,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.key,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.school,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.cast_for_education,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Container(
                      height: Boxs,
                      width: Boxs,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white70,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.baby_changing_station,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}