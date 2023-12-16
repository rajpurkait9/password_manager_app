import 'package:flutter/material.dart';

class Logs extends StatelessWidget {
  const Logs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Logs'),
        ),
        body: Container(
          child: const Text('Logs'),
        ));
  }
}
