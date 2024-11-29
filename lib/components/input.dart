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
  bool _lightOn = false;
  String? selectedLanguage;

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
                const SizedBox(height: 18.0),
                Switch(
                  value: _lightOn,
                  onChanged: (bool value) {
                    setState(() {
                      _lightOn = value;
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(_lightOn ? 'Light On' : 'Light Off'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Radio<String>(
                        value: 'Dart',
                        groupValue: selectedLanguage,
                        onChanged: (String? value) {
                          setState(() {
                            selectedLanguage = value;
                            showSnackBar();
                          });
                        },
                      ),
                      title: Text('Dart'),
                    ),
                    ListTile(
                      leading: Radio<String>(
                        value: 'Kotlin',
                        groupValue: selectedLanguage,
                        onChanged: (String? value) {
                          setState(() {
                            selectedLanguage = value;
                            showSnackBar();
                          });
                        },
                      ),
                      title: Text('Kotlin'),
                    ),
                    ListTile(
                      leading: Radio<String>(
                        value: 'Swift',
                        groupValue: selectedLanguage,
                        onChanged: (String? value) {
                          setState(() {
                            selectedLanguage = value;
                            showSnackBar();
                          });
                        },
                      ),
                      title: Text('Swift'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$selectedLanguage selected'),
        duration: Duration(seconds: 1),
      ),
    );
  }
}
