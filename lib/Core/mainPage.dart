import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var fullName = "Abcbabc Qeety";

  int _barIndex = 0;
  final _pages = <Widget>[];

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
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Here is the main page.", style: TextStyle(fontSize: 20)),
          const Text("Resizing images below",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const Text("Original Image",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Container(
            width: MediaQuery.of(context).size.width - 50,
            height: MediaQuery.of(context).size.width / 2.25,
            padding: const EdgeInsets.all(15),
            child: Image.network(
                'https://internationalnewsagency.org/wp-content/uploads/2020/11/frozen-face-emoji.jpg'),
          ),
          const Text("Image after resizing",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Container(
            width: MediaQuery.of(context).size.width - 20,
            height: MediaQuery.of(context).size.width / 2.25,
            padding: const EdgeInsets.all(15),
            child: resizeImage(
                'https://internationalnewsagency.org/wp-content/uploads/2020/11/frozen-face-emoji.jpg'),
          ),
          const Text("Name hiding below",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Text(
              (fullName.replaceRange(
                  2, fullName.length, ("*" * (fullName.length - 2)))),
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
        ],
      )
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

  Image resizeImage(String urlLink) {
    var resizedImage = Image(
        image: ResizeImage(NetworkImage(urlLink), width: 250, height: 250));
    return resizedImage;
  }
}
