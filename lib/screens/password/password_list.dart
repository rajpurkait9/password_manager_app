import 'package:flutter/material.dart';

class PasswordList extends StatelessWidget {
  const PasswordList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Password List'),
        ),
        body: Container(
          child: const Text('Password List'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/groups/add');
            print("Add Password");
          },
          child: const Icon(Icons.add),
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ));
  }
}
