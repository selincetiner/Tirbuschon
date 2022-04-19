import 'package:flutter/material.dart';
import '../Core/mainPage.dart';
import '../services/authService.dart';
import 'loginPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();

  String dropdownValue = 'Customer';
  late String fullName, username, email, password, phoneNumber;
  var roles = ['Customer', 'Venue Owner'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "Tirbuschon",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.blue[400],
                fontStyle: FontStyle.italic,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: "Full Name",
                      hintText: "Please enter your full name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Full name field can not be empty!";
                      } else if (value.trim().length < 4) {
                        return "Full name should be at least 4 characters.";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      fullName = value.toString();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                      labelText: "Username",
                      hintText: "Please enter your username",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username field can not be empty!";
                      } else if (value.trim().length < 4 ||
                          value.trim().length > 10) {
                        return "Username can be at least 4 and most 10 chars.";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      username = value.toString();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      labelText: "Email",
                      hintText: "Please enter your email",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email field can not be empty!";
                      } else if (!value.contains("@")) {
                        return "Value should be an email format.";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      hintText: "Please enter your password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password field can not be empty!";
                      } else if (value.trim().length < 4) {
                        return "Password can not be less then 4 chars.";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: "Phone number",
                      hintText: "Please enter your mobile phone number",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Phone number field can not be empty!";
                      } else if (value.trim().length < 4) {
                        return "Phone number should be at least 4 chars without country code.";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      phoneNumber = value.toString();
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DropdownButtonFormField(
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          labelText: 'Select your user type',
                          labelStyle: TextStyle(fontSize: 20)),
                      value: dropdownValue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: roles.map((String roles) {
                        return DropdownMenuItem(
                          value: roles,
                          child: Text(roles),
                        );
                      }).toList(),
                      onChanged: (String? selectedValue) {
                        setState(() {
                          dropdownValue = selectedValue!;
                        });
                      },
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1),
                    color: Colors.blue,
                  ),
                  child: TextButton(
                    onPressed: () {
                      _createUser();
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text("Do you have your account?"),
            ),
          ],
        ),
      ),
    );
  }

  void _createUser() async {
    var _formState = _formKey.currentState;
    if (_formState!.validate()) {
      _formState.save();

      await _authService
          .createUser(
              fullName, username, email, password, phoneNumber, dropdownValue)
          .then((value) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const MainPage()),
            (route) => false);
      }).catchError((error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(error.toString()),
        ));
      });
    }
  }
}
