import 'package:allah_names/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.lightGreen[700],
        brightness: Brightness.light,
      ),
      title: "Allah Names",
      initialRoute: '/',
      routes: {
        // '/': (context) => HomePage(),
        '/': (context) => Home(),
      },
    );
  }
}
