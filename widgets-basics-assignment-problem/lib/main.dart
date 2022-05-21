import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var text = 'This is the title of the AppBar';

  void change() {
    setState(() {
      text = 'the body text has been changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
          'This is the title',
          textAlign: TextAlign.center,
        )),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24, color: Colors.orange),
              ),
              ElevatedButton(onPressed: change, child: const Text('Press')),
            ],
          ),
        ),
      ),
    );
  }
}
