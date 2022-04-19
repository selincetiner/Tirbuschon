import 'package:flutter/material.dart';
import '../Core/mainPage.dart';
import '../services/authService.dart';
import 'forgetPassword.dart';
import 'signUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      backgroundColor: Colors.grey[100],
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Tirbuschon",
                style: TextStyle(
                  fontSize: 42,
                  color: Colors.blue[400],
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      labelText: "Email",
                      hintText: "Please enter your email",
                    ),
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
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgetPassword(),
                      ),
                    );
                  },
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                ),
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
                      _loginWithEmailPassword();
                    },
                    child: const Text(
                      "Login",
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
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
              child: const Text(
                "New User? Create Account?",
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _loginWithEmailPassword() async {
    final AuthService _authService = AuthService();

    var _formState = _formKey.currentState;
    if (_formState!.validate()) {
      _formState.save();

      await _authService.signInWithEmail(email, password).then((value) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const MainPage()),
            (route) => false);
      }).catchError((error) {
        String errorDetail;
        if (error.toString().contains('invalid-email')) {
          errorDetail = "Email is invalid";
        } else if (error.toString().contains('user-not-found')) {
          errorDetail = "The user is not found.";
        } else if (error.toString().contains('wrong-password')) {
          errorDetail = "The password is wrong.";
        } else {
          errorDetail = "There is an error that we can not define.";
        }

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(errorDetail.toString()),
        ));
      });
    }
  }
}
