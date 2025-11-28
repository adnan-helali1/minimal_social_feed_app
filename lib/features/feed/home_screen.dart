import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'this is a fucking Home Screen!!!!!!!!!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
