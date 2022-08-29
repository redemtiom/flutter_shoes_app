import 'package:flutter/material.dart';
import 'package:shoesapp/src/widgets/index.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppBar(text: 'For you',),
    );
  }
}
