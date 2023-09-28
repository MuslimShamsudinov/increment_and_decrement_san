import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final int san;

  SecondPage({required this.san});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text('Result: $san', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
