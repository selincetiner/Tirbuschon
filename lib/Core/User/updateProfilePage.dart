import 'package:flutter/material.dart';

class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({Key? key}) : super(key: key);

  @override
  _UpdateProfilePageState createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Update Profile"),
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
                      onPressed: () {},
                      child: const Text("Change Username",
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
                      child: const Text("Change Full Name",
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
                      child: const Text("Change Social Media Info",
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
                      child: const Text("Change Profile Image",
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                ),
              ),
            ],
          ),
        ));
  }
}
