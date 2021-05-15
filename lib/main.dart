import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool intro = true;

  void goToHome() {
    setState(() {
      intro = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: intro ? Intro(goToHome) : Home(),
      theme: ThemeData(
        splashColor: Colors.transparent,
      ),
    );
  }
}
