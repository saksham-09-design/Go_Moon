import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _moonText(),
    );
  }

  Widget _moonText() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w800,
        fontSize: 70,
      ),
    );
  }

  Widget _moonImage() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("./assets/images/moon.png"),
        ),
      ),
    );
  }
}
