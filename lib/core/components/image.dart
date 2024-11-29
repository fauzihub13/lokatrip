import 'package:flutter/material.dart';

class ImageApp extends StatelessWidget {
  const ImageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image App',
      theme: ThemeData(
        fontFamily: 'Oswald',
      ),
      home: const ImageAppScreen(),
    );
  }
}

class ImageAppScreen extends StatelessWidget {
  const ImageAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Oswald Font',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
            ),
          ),
          Image.asset(
            'images/Nailoong.jpeg',
            width: 200,
            height: 200,
          ),
        ],
      )),
    );
  }
}
