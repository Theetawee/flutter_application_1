import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/waanverse_home.dart';

void main() {
  runApp(const Waanverse());
}

class Waanverse extends StatelessWidget {
  const Waanverse({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
