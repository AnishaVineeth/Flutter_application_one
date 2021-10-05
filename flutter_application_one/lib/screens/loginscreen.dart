import 'package:flutter/material.dart';
import 'homescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      //  type: MaterialType.transparency,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Company Name',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hi there! Nice to see you again.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.red),
                  hintText: 'Enter valid mail id',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: isHiddenPassword,
                decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: 'Enter your password',
                    suffixIcon: InkWell(
                        onTap: _togglePassword,
                        child: Icon(
                          isHiddenPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ))),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    padding:
                        EdgeInsets.symmetric(horizontal: 120, vertical: 12)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text('Sign In')),
            const SizedBox(
              height: 110,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Forgot Password?',
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  void _togglePassword() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {});
  }
}
