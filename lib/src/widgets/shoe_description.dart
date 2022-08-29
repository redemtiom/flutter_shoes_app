import 'package:flutter/material.dart';

class ShoeDescription extends StatelessWidget {
  const ShoeDescription(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Text(title,
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              )),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            description,
            style: const TextStyle(
              color: Colors.black54,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
