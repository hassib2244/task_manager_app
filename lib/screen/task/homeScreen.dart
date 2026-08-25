import 'package:flutter/material.dart';
import 'homeScreen.dart';
class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ebo Task'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(),
    );
  }
}
