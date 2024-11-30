import 'package:flutter/material.dart';
import 'package:flutter_lokatrip/presentation/screen/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);
  final String message= "Hello, this is message from first";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Screen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
          child: Center(
        child: OutlinedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondScreen(message);
              }));
            },
            child: const Text('Second Screen')),
      )),
    );
  }
}
