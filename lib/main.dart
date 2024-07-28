import 'package:flutter/material.dart';

void main() {
  runApp(const ReadIt());
}

class ReadIt extends StatelessWidget {
  const ReadIt({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReadIt'),
      ),
    );
  }
}
