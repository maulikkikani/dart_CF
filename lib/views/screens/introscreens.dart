import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class introscreens extends StatefulWidget {
  const introscreens({Key? key}) : super(key: key);

  @override
  State<introscreens> createState() => _introscreensState();
}

class _introscreensState extends State<introscreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            body: "Screen 1",
            title: "Welocome to my app",
            image: Image.asset('assets/image/Welcome.png')
          ),
          PageViewModel(
              body: "Screen 2",
              title: "My app Second page",
              image: Image.asset('assets/image/Next steps.png')
          ),
          PageViewModel(
              body: "Screen 3",
              title: "My app Third page",
              image: Image.asset('assets/image/Next option.png')
          ),
          PageViewModel(
              body: "Screen 4",
              title: "My app Four page",
              image: Image.asset('assets/image/Next option2.png')
          ),
          PageViewModel(
              body: "Screen 5",
              title: "My app Five page",
              image: Image.asset('assets/image/Hello-pana.png')
          ),
        ],
        done: Text("Thank You"),
        showNextButton: false,
        onDone: (){
          Navigator.of(context).pushNamed("/");
        },
      ),
    );
  }
}
