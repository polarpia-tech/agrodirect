import 'package:flutter/material.dart';
import 'screens/crops_screen.dart';

void main() {
  runApp(const AgroDirectApp());
}

class AgroDirectApp extends StatelessWidget {
  const AgroDirectApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgroDirect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const CropsScreen(),
    );
  }
}
