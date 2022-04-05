import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tirbuschon_feng497/welcomePage.dart';
import 'package:tirbuschon_feng497/Review/reviewVenuePage.dart';
import 'package:tirbuschon_feng497/Review/reviewPersonnel.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
<<<<<<< Updated upstream
      home: const ReviewVenuePage(),
      // WelcomePage(),
=======
      home: const WelcomePage(),
>>>>>>> Stashed changes
    );
  }
}
