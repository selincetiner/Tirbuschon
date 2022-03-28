import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forget Password"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    labelText: "Email",
                    hintText: "Please enter your email",
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blueAccent,
                border: Border.all(
                  width: 1,
                )),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Request Password Reset",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
