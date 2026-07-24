import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/prices_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        primarySwatch: Colors.green,
      ),
      home: PricesScreen(),
    );
  }
}
