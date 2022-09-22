import 'package:flutter/material.dart';
import 'package:newtest/screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter test',
    debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

