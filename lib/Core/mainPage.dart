import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _barIndex = 0;
  final _pages = <Widget>[
  ];

  void _onTapped(int index) {
    setState(() {
      _barIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tirbuschon"),
      ),
      body: const Center(
        child: Text("Here is the main page.")
        //_pages.elementAt(_barIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _barIndex,
        onTap: _onTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    );
  }
}