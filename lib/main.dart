import 'package:flutter/material.dart';
import 'package:shoesapp/src/pages/shoe_description_page.dart';
import 'package:shoesapp/src/pages/shoe_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoesapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoePage(),
    );
  }
}
