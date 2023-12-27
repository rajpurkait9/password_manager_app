import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controllers/password_controller.dart';

class PasswordList extends StatelessWidget {
  PasswordList({super.key});

  PasswordController passwordController = Get.put(PasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Password List'),
        ),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                if (passwordController.isLoading.value) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Column(
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: passwordController.passwordList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                                onTap: () {
                                  Get.bottomSheet(
                                    Container(
                                      height: 200,
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          ListTile(
                                            onTap: () {
                                              Get.back();
                                              // Get.toNamed('/user/update',
                                              //     arguments: userPageController
                                              //         .userList[index]);
                                            },
                                            title: const Text("Update"),
                                            leading: const Icon(Icons.update),
                                          ),
                                          ListTile(
                                            onTap: () {
                                              Get.back();
                                              // userPageController
                                              //     .deleteUser(index);
                                            },
                                            title: const Text("Delete"),
                                            leading: const Icon(Icons.delete),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                title: Text(passwordController
                                    .passwordList[index].website),
                                subtitle: Text(passwordController
                                    .passwordList[index].password),
                                leading: const Icon(Icons.lock),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Get.bottomSheet(
                                          Container(
                                            height: 200,
                                            color: Colors.white,
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  onTap: () {
                                                    Get.back();
                                                    // Get.toNamed('/user/update',
                                                    //     arguments: userPageController
                                                    //         .userList[index]);
                                                  },
                                                  title: const Text("Update"),
                                                  leading:
                                                      const Icon(Icons.update),
                                                ),
                                                ListTile(
                                                  onTap: () {
                                                    Get.back();
                                                    // userPageController
                                                    //     .deleteUser(index);
                                                  },
                                                  title: const Text("Copy"),
                                                  leading:
                                                      const Icon(Icons.copy),
                                                ),
                                                ListTile(
                                                  onTap: () {
                                                    Get.back();
                                                    // userPageController
                                                    //     .deleteUser(index);
                                                  },
                                                  title: const Text("Delete"),
                                                  leading:
                                                      const Icon(Icons.delete),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      icon: const Icon(Icons.more_vert),
                                    ),
                                  ],
                                ));
                          }),
                    ],
                  );
                }
              }),
            ],
          ),
        )),
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
