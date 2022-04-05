<<<<<<< HEAD
import 'package:firebase_auth/firebase_auth.dart';
=======
>>>>>>> 6bd110bacec101235f507ea329e54217cc5a3b3a
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tirbuschon_feng497/welcomePage.dart';

<<<<<<< HEAD
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MyApp());
=======
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
>>>>>>> 6bd110bacec101235f507ea329e54217cc5a3b3a
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
