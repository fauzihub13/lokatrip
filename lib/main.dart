import 'package:flutter/material.dart';

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
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: const Text(
                'Farm House Lembang',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                textAlign: TextAlign.center,
              )),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(height: 8.0),
                    Text('Open Everyday')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(height: 8.0),
                    Text('09:00 - 20:00')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.monetization_on),
                    SizedBox(height: 8.0),
                    Text('Rp25.000')
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              "Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          )
        ],
      ),
    ));
  }
}
