import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Button App",
      theme: ThemeData(),
      home: const ButtonAppScreen(),
    );
  }
}

class ButtonAppScreen extends StatefulWidget {
  const ButtonAppScreen({Key? key}) : super(key: key);

  @override
  State<ButtonAppScreen> createState() => _ButtonAppScreenState();
}

class _ButtonAppScreenState extends State<ButtonAppScreen> {
  String? selectedLanguage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Button App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
          child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            child: const Text(
              "Tombol",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              // Aksi ketika button diklik
            },
          ),
          TextButton(
            child: const Text(
              'Text Button',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                side: const BorderSide(color: Colors.blue, width: 1)),
            child: const Text(
              'Outlined Button',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10',
          ),
          DropdownButton(
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: 'Dart',
                  child: Text('Dart'),
                ),
                DropdownMenuItem<String>(
                  value: 'Kotlin',
                  child: Text('Kotlin'),
                ),
                DropdownMenuItem<String>(
                  value: 'Swift',
                  child: Text('Swift'),
                ),
              ],
              value: selectedLanguage,
              hint: const Text('Select Languange'),
              onChanged: (String? value) {
                setState(() {
                  selectedLanguage = value;
                });
              })
        ],
      )),
    );
  }
}
