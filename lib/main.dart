import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages/page1.dart';
//import 'package:flutter_application_5/pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: page1(),
    );
  }
}
