import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  const OrangeButton({
    Key? key,
    required this.text,
    this.width = 150.0,
    this.height = 50.0,
    this.color = Colors.orange
  }) : super(key: key);

  final String text;
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(100.0)),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
