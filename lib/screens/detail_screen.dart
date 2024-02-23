import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;

  DetailScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'This is the detail page for $name',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}