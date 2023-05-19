import 'package:flutter/material.dart';
import 'package:intro_screen/views/screens/introscreens.dart';
import 'package:intro_screen/views/screens/maulikinfo.dart';

void main() {
  runApp(
    const maulik(),
  );
}

class maulik extends StatefulWidget {
  const maulik({Key? key}) : super(key: key);

  @override
  State<maulik> createState() => _maulikState();
}

class _maulikState extends State<maulik> {
  get visited => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          brightness: Brightness.light,
          primary: Color(0xff008069),
          secondary: Color(0xff00a884),
        ),
      ),
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff1f2c34),
        ),
        colorScheme: ColorScheme.dark(
          brightness: Brightness.dark,
          primary: Color(0xff1f2c34),
          secondary: Color(0xff04a684),
        ),
      ),
      themeMode: ThemeMode.system,
      initialRoute: 'intro_screens',
      routes: {
        '/': (context) => const maulikinfo(),
        'intro_screens': (context) => introscreens(),
      },
    );
  }
}
