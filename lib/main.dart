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
      title: 'Calculator',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATOR'),
      ),
      body: Row(
        children: [
          makeButton('1'),
          makeButton('2'),
          makeButton('3'),
          makeButton('+'),
        ],
      ),
    );
  }

  ElevatedButton makeButton(String str) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        str,
        style: TextStyle(fontSize: 10),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
          shape: CircleBorder(),
          padding: EdgeInsets.all(25)),
    );
  }
}
