import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controllers/user_page_controller.dart';

class UserList extends StatelessWidget {
  UserList({super.key});
  UserPageController userPageController = Get.put(UserPageController());

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
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text('Add User'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              controller: userPageController.nameController,
                              decoration: const InputDecoration(
                                  labelText: 'Name',
                                  hintText: 'Enter your name'),
                            ),
                            TextField(
                              controller: userPageController.emailController,
                              decoration: const InputDecoration(
                                  labelText: 'Email',
                                  hintText: 'Enter your email'),
                            ),
                            TextField(
                              controller: userPageController.passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  labelText: 'Password',
                                  hintText: 'Enter your password'),
                            ),
                            TextField(
                              controller:
                                  userPageController.mobileNumberController,
                              decoration: const InputDecoration(
                                  labelText: 'Mobile Number',
                                  hintText: 'Enter your mobile number'),
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel')),
                          TextButton(
                              onPressed: () {
                                userPageController.addUser();
                                Navigator.of(context).pop();
                              },
                              child: const Text('Save'))
                        ],
                      ));
            },
            child: const Icon(Icons.add),
            backgroundColor: Theme.of(context).colorScheme.secondary));
  }
}
