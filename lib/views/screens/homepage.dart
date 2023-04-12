import 'dart:math';

import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Random r1 = Random();
    int img1 = r1.nextInt(6);
    int img2 = r1.nextInt(6);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice App",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff1C49BB),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Total Amount: ${img1 + img2 + 2}",
            style: const TextStyle(
              fontSize: 25,
              color: Color(0xff17325A),
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image(
                    image: AssetImage(
                        'build/flutter_assets/image/${img1 + 1}.png'),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: Image(
                    image: AssetImage(
                        'build/flutter_assets/image/${img2 + 1}.png'),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(100),
            splashFactory: NoSplash.splashFactory,
            onTap: () {
              setState(() {});
            },
            child: Stack(
              alignment: Alignment.center,
              children: const [
                Image(
                  image: AssetImage('build/flutter_assets/image/Button.png'),
                ),
                Text("Roll Dice",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff98B8D1),
    );
  }
}
