import 'package:flutter/material.dart';
import 'package:go_moon/Pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Go Moon",
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(41, 41, 41, 1)),
      home: HomePage(key),
    );
  }
}
