import 'package:flutter/material.dart';

class mybox extends StatefulWidget {
  final String title;
  final double min;
  final double max;
  final double value;
  final int index;

  const mybox(
      {Key? key,
      required this.title,
      required this.min,
      required this.max,
      required this.value,
      required this.index})
      : super(key: key);

  @override
  State<mybox> createState() => _myboxState();
}

class _myboxState extends State<mybox> {
  get myvalu => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(widget.title),
          Stack(
            alignment: Alignment.center,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffE5E6E8),
                ),
              ),
              Text(
                "${myvalu[widget.index]['value'].toInt().toString()} ",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Slider(
            min: widget.min,
            max: widget.max,
            value: myvalu[widget.index]['value'].toDouble(),
            onChanged: (val) {
              setState(() {
                myvalu[widget.index]['value'] = val;
              });
            },
          ),
        ],
      ),
    );
  }
  }

