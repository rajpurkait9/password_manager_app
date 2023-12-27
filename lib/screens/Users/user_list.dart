import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controllers/user_page_controller.dart';

class UserList extends StatelessWidget {
  UserList({super.key});
  UserPageController userPageController = Get.put(UserPageController());

  @override
  Widget build(BuildContext context) {
    // print("${userPageController.userList.map((e) => e.toJson())}  somethign is wrong");
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('User List'),
        ),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                if (userPageController.isLoading.value) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Column(
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: userPageController.userList.length,
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
                                        ListTile(
                                          onTap: () {
                                            Get.back();
                                          },
                                          title: const Text("Block"),
                                          leading: const Icon(Icons.cancel),
                                        ),
                                      ],
                                    ),
                                  ),
                                  isScrollControlled: true,
                                  enableDrag: true,
                                  ignoreSafeArea: false,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                );
                              },
                              title: Text(
                                  userPageController.userList[index].name ??
                                      ''),
                              subtitle: Text(
                                  userPageController.userList[index].email ??
                                      ''),
                              leading: CircleAvatar(
                                child: Text(userPageController
                                        .userList[index].name
                                        ?.substring(0, 1)
                                        .toUpperCase() ??
                                    ''),
                              ),

                              trailing: IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: const Text('Delete User'),
                                            content: const Text(
                                                'Are you sure you want to delete this user?'),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Get.snackbar("deleted",
                                                        "user deleted successfully");
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text('Cancel')),
                                              TextButton(
                                                  onPressed: () {
                                                    // userPageController
                                                    //     .deleteUser(index);
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text('Confirm'))
                                            ],
                                          ));
                                },
                                icon: const Icon(Icons.delete),
                                color: Colors.red,
                              ),

                              // trailing:
                            );
                          }),
                    ],
                  );
                }
              })
            ],
          ),
        )),
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
