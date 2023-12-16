import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('User List'),
        ),
        body: Container(
          child: const Text('User List'),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/groups/add');
              print("Add User");
            },
            child: const Icon(Icons.add),
            backgroundColor: Theme.of(context).colorScheme.secondary));
  }
}
