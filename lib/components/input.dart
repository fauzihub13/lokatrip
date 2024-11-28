import 'package:flutter/material.dart';

class InputApp extends StatelessWidget {
  const InputApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Button App",
      theme: ThemeData(),
      home: const InputAppScreen(),
    );
  }
}

class InputAppScreen extends StatefulWidget {
  const InputAppScreen({Key? key}) : super(key: key);

  @override
  State<InputAppScreen> createState() => _InputAppScreenState();
}

class _InputAppScreenState extends State<InputAppScreen> {
  String _onChangedName = '';
  String _onSubmittedName = '';
  String _textControllerName = '';
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Input App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  "On Change Function",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                TextField(
                  onChanged: (String value) {
                    setState(() {
                      _onChangedName = value;
                    });
                  },
                ),
                const SizedBox(height: 18.0),
                Text(
                  _onChangedName,
                  style: const TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 18.0),
                const Text(
                  "On Submitted Function",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                TextField(
                  onSubmitted: (String value) {
                    setState(() {
                      _onSubmittedName = value;
                    });
                  },
                ),
                const SizedBox(height: 18.0),
                Text(
                  _onSubmittedName,
                  style: const TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 18.0),
                const Text(
                  "Text Editing Controller",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Tulis nama kamu disini",
                      labelText: "Nama Kamu"),
                  controller: _controller,
                  onChanged: ((String textControllerName) {
                    setState(() {
                      _textControllerName = textControllerName;
                    });
                  }),
                ),
                const SizedBox(height: 18.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: const Text(
                    "Kirim  ",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text('Hello $_textControllerName'),
                          );
                        });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
