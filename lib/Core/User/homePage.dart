import 'package:flutter/material.dart';
import 'package:tirbuschon_feng497/Core/User/profilePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 10, top: 50),
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Restaurants:",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: null,
                      child: Text(
                        "Show all",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )),
                ),
              ),
            ],
          ),
          Flexible(
            flex: 1,
            child: ListView(
              children: [
                Container(
                  width: 100,
                  color: Colors.grey,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 200,
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 200,
                  color: Colors.green,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 200,
                  color: Colors.grey,
                )
              ],
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: const [
              Expanded(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Activities:",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      onPressed: null,
                      child: Text(
                        "Show all",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )),
                ),
              ),
            ],
          ),
          Flexible(
            flex: 1,
            child: ListView(
              children: [
                Container(
                  width: 100,
                  color: Colors.grey,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 200,
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 200,
                  color: Colors.green,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 200,
                  color: Colors.grey,
                )
              ],
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Expanded(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Latest reservations:",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePage()));
                      },
                      child: const Text(
                        "Show all",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )),
                ),
              ),
            ],
          ),
          Flexible(
            flex: 1,
            child: ListView(
              children: [
                Container(
                  width: 100,
                  color: Colors.grey,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 200,
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 200,
                  color: Colors.green,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 200,
                  color: Colors.grey,
                )
              ],
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    ));
  }
}
