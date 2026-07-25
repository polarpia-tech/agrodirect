import 'package:flutter/material.dart';

void main() {
  runApp(const AgroDirectApp());
}

class AgroDirectApp extends StatelessWidget {
  const AgroDirectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agro Direct',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Scaffold(
        body: Center(
          child: Text(
            'Agro Direct App',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
