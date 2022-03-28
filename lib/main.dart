import 'package:flutter/material.dart';
import 'package:tirbuschon_feng497/welcomePage.dart';
import 'package:tirbuschon_feng497/Review/reviewVenuePage.dart';
import 'package:tirbuschon_feng497/Review/reviewPersonnel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tirbuschon Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ReviewVenuePage(),
    );
  }
}
