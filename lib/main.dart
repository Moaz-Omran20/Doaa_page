import 'package:ahadeeth/doaa_page.dart';
import 'package:flutter/material.dart';

import 'doaa_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoaaPageTest(),
    );
  }
}

