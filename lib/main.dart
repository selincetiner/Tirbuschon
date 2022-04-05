import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tirbuschon_feng497/welcomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    print('initState()');

    //MyApp.setLocale(context, locale);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tirbuschon Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const WelcomePage(),
      // WelcomePage(),
    );
  }
}
