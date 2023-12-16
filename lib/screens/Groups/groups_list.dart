import 'package:flutter/material.dart';

class GroupsList extends StatelessWidget {
  const GroupsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Groups List'),
        ),
        body: Container(
          child: const Text('Groups List'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/groups/add');
            print("Add Group");
          },
          child: const Icon(Icons.add),
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ));
  }
}
