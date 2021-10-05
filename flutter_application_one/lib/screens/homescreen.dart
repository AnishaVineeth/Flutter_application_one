import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () {},
              child: Text('Hello'))
        ]),
      ),
    ));
  }
}