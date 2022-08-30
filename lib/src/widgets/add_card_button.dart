import 'package:flutter/material.dart';
import 'package:shoesapp/src/widgets/index.dart';

class AddButtonCard extends StatelessWidget {
  const AddButtonCard({Key? key, required this.price}) : super(key: key);

  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(100.0)),
        child: Row(
          children: [
            const SizedBox(width: 20.0),
            Text(
              '\$$price',
              style:
                  const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            OrangeButton(text: 'Add to cart'),
            const SizedBox(width: 20.0),
          ],
        ),
      ),
    );
  }
}
