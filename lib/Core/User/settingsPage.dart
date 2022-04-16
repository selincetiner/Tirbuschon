import 'package:flutter/material.dart';
import 'package:tirbuschon_feng497/Core/User/profileSettingsPage.dart';
import 'policyPage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          iconSize: 20,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyText1,
              children: const [
                TextSpan(
                    text: "Tirbuschon",
                    style: TextStyle(fontSize: 50, color: Colors.blue)),
              ],
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 200,
          ),
          Card(
            color: Colors.blue,
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileSettingsPage()));
                  },
                  child: const Text("Profile Settings",
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ),
          Card(
            color: Colors.blue,
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PolicyPage()));
                  },
                  child: const Text("Policy Page",
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ),
          Card(
            color: Colors.blue,
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Report a problem",
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ),
          Card(
            color: Colors.blue,
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Log Out",
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ),
        ],
      )),
    );
  }
}
