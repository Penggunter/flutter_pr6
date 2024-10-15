import 'package:flutter/material.dart';
import 'src/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget MainPage;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 241, 222, 14)),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
