import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String message;
  const SecondScreen(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Screen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(message),
          OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('First Screen')),
        ]),
      )),
    );
  }
}
