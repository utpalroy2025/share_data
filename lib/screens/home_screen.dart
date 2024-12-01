import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade200,
      body: Center(
        child: Text("Home",style: TextStyle(
            color: Colors.white,
            fontSize: 30
        ),),
      ),
    );
  }
}