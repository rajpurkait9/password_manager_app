import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:my_app/controllers/home_page_controller.dart';
import 'package:my_app/screens/Groups/groups_list.dart';
import 'package:my_app/screens/Logs/logs_view.dart';
import 'package:my_app/screens/Users/user_list.dart';
import 'package:my_app/screens/password/password_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  HomePageController controller = Get.put(HomePageController());

  List pages = [
    const PasswordList(),
    const GroupsList(),
    const Logs(),
    const UserList()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home Page'),
      ),
      body: pages[controller.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.selectedIndex,
        onTap: controller.changeIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/icons/004-padlock.png'),
              width: 24,
              height: 24,
            ),
            label: 'Passwords',
          ),
          BottomNavigationBarItem(
            icon: Image(
                image: AssetImage(
                  'assets/icons/001-person.png',
                ),
                width: 24,
                height: 24),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: Image(
                image: AssetImage(
                  'assets/icons/010-people.png',
                ),
                width: 24,
                height: 24),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Image(
                image: AssetImage(
                  'assets/icons/009-list.png',
                ),
                width: 24,
                height: 24),
            label: 'logs',
          ),
        ],
      ),
    );
  }
}
