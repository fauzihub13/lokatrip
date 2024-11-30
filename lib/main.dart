import 'package:flutter/material.dart';

import 'presentation/expanded_flexible.dart';
import 'presentation/screen/first_screen.dart';
import 'presentation/screen/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LokaTrip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}
