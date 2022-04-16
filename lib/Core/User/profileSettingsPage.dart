import 'package:flutter/material.dart';
import 'package:tirbuschon_feng497/Core/User/updateProfilePage.dart';

class ProfileSettingsPage extends StatefulWidget {
  const ProfileSettingsPage({Key? key}) : super(key: key);

  @override
  _ProfileSettingsPageState createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile Settings"),
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
                                builder: (context) =>
                                    const UpdateProfilePage()));
                      },
                      child: const Text("Update Profile",
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
                      child: const Text("Delete Account",
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                ),
              ),
            ],
          ),
        ));
  }
}
