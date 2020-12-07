import 'package:flutter/material.dart';

class DotSlider extends StatefulWidget {
  bool isOn = false;

  DotSlider({bool isOn});
  @override
  _DotSliderState createState() => _DotSliderState();
}

class _DotSliderState extends State<DotSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          //color: Colors.blue,
          color: widget.isOn ? Colors.blue : Colors.grey,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
